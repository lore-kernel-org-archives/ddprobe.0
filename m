Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105346A009
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707374897; cv=none; b=SdDY4ohe+fj/iKwMixQXA4NU2CEWbrYMjbbJ2aFeUvE7UcGNx6vtRYglHfCk1caw9KfRmaJhJzfO126vYl6g/7e9b0K2YVyRqD0g7B5OCTqkW9jcR2L0VFCcyS48kcPMj4lpN8JvxmKkGb/D9pzsf7iVhYDVFJok5ucS2IaYkKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707374897; c=relaxed/simple;
	bh=rSRc9jKsyB+5+1uopS08shEapakL295WVD0jTT6TTw0=;
	h=To:Subject:From:Message-Id:Date; b=qgBxu0YFj68k1DLGf8QcglmMA6KITZSZDF+tXCloMQ6hPTppeygpNjm27ZwANWESFCMlCrwqMYJqV+Tqve+sCKaF2Zw/qInMaYeD/3pOsu1Fvi9q1KnJOocp2DElX1eK7DSsxgFZ5d31HZHX6OPOVv2T9uvK0od82Lfyv9KFQnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFpPQV/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFpPQV/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A5BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707374896;
	bh=rSRc9jKsyB+5+1uopS08shEapakL295WVD0jTT6TTw0=;
	h=To:Subject:From:Date:From;
	b=RFpPQV/J9Eav4Td9X090QE4YWb19KCknK9PYugmX6/O4NvMgi5DxAQR8l3P0+6pcG
	 1dk2bupH6UHPwotUzUC/wCjNM3zeIsGsJwPge35Mc0FPqg6WbsIZcHiFbOWIGLXtGE
	 /oMSWZdQT19mQpPK8CdOz96WHbu7sTCMhZ6s7zlKYbhwPf8N94Q6pubZfzgnRyL5Dr
	 G76Zf190qyEo3sS73qWOWi/FvVa0B2QvJp5LUt+x7FMDMhreNxEvhIucTYeedDbarl
	 g1QH3GK3PoCsq/4yFkTTkfhfdlz6zEb9+SXZgutEK1mrzji0pDQhJSpuYIB+XoAsG5
	 noWblEEe+TCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A86BC48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170737489641.16088.10075923242059685008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a16ada7035aa23e0660ce41945be8fd7b2ed7b82c770ace057cd13e4d40e2df
Date: Thu, 08 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707374896
