Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F8D2765F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762754394; cv=none; b=keMOWhU9hUYZyClDj+orHu3GK14+KSGOnILvYK//csZgtU3j+pdXqqAWWqkJDOWx0hpwzj8TaZqy2jbLkL+9tunfa/ZNr8twyMFWpVm64V7m0ngPzsX2ni28/99xf6B+pDq+4AnIKMplix+WUvH9WsEp6/pp0GmC0z30xsh/bdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762754394; c=relaxed/simple;
	bh=Lb640p++OYmSFi+x3x3WxlTxSGh+B2bPzJtGmnc5API=;
	h=To:Subject:From:Message-Id:Date; b=Gur/Xsp7JPoICWEbzulVXhfak169G1fNFL3Y4Wfp1ScIEGnbpziMuT3wSe5CWV3O8+Z0aVV9x+GMMFnNEuznmNgWqvIoXAFGgRLBhAcumAFLE40rhIU2iLaD4ZXf0nivHAgYekOadGDguLCFb4W9ncB5DT20gKymjjRW6E3RyHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcgLLKwf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcgLLKwf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDE0C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762754393;
	bh=Lb640p++OYmSFi+x3x3WxlTxSGh+B2bPzJtGmnc5API=;
	h=To:Subject:From:Date:From;
	b=bcgLLKwfIsYPAiBkGBsPLzewubDA3DxPUQ2QiXu/eIfmYnYLse0hwMeJUZMHiJ9lE
	 yROzGBNEUjiNY++NIMCNSlMG2CX7yzVYp26ripDW0GrvDwV2coLk7CyqhPBjv6pIYH
	 oA9dQWb0VIsKmTe+xD1AHknl3tlOX8zBwbkKXYATDP+FgaxbC/iQ9i0QMZsjR0BDHF
	 VwKwD6ouo5I73UubLzmbOJ4ZQuAqmt+IruJozWTCmi+RYzOgDrTKj2DI5K62msmHJx
	 VrAw1ps0ND/JJh2Yscm+A29s1L0FN2athztgzJSdsKFhADblqUSEXS5/AzRPcwu+06
	 zrRCRd46wPz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F051CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275439357.6259.12127947911823118835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59c4d95992247c632c45a8c84df2a97516f2bb0702cc349a334f5317d1fd4a6
Date: Mon, 10 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762754393
