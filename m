Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172BD19CC14
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629494; cv=none; b=LwSkMgwQSXigydAVXikIhGRROHfMIXpLn9LQBLppUaMBWBFi9dXJZl/HRb9JKWwGkShztASyTTkRF6vqJ363ltHL+87beQOVlskHFmpm/ekjExEA37ZPJu7RuvQRU0X0/hnyShdmHl3zwEptud1v4Vxg7k/jCfR2mQi/qmYx91U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629494; c=relaxed/simple;
	bh=joWjMoKWWiao2+A1KS53rHxJJvSjcTPJsrbpO9QWL94=;
	h=To:Subject:From:Message-Id:Date; b=UiWekuR6uulYlMJ5FpebR2avwf1MfIlRbrtv4Wx0rSUZho2mEj3yAcuTCgHt03sCe3CPd3oqqNwvjSlpG2rR9OQaQlxq5Tr+4b+YFvORSJmMgzOqMYdG1m0//EXBsahYeJy4kQ5nwNdXVeMlmeVbbrV23UuM0GCT8mvkCrkuPW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNV5strC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNV5strC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CEBC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772629493;
	bh=joWjMoKWWiao2+A1KS53rHxJJvSjcTPJsrbpO9QWL94=;
	h=To:Subject:From:Date:From;
	b=CNV5strCmqTJ8qqVpejw4mKi8iiy39QvurhbuHFr7mMaxmFblggkNiuTOrjrGwcVb
	 D7a02zyn6FqTPFb6Evs+9iHMrwegj7jOuoyOiv5OtfM9bRKCZ8TQfIc4B6jP8S/D+O
	 tLgVaHW+EDA5fUnChtoXF/3AS9B8qqae3T/id3ynxpjuPxCWkrylzC+c/4hqndKLN0
	 8lYIlHHYm3+JQBOO//raVlOQLtDBY2Wj2DHVTbOaj74m0gecdzOLW6mJujpcQLeEb2
	 QUbUZdfNozjLHAQXV+NxUiBzBE67y+MX9b1TnnLBsgkDgFFYaQwyOKtRWeWClaZojW
	 mpZagodUh/KdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B215EF8FE1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262949360.3526.11334351771985941925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912bac2e7b6f064a7890d3fb15e18bca15a44d3b33f78e98480b75120f42b4db
Date: Wed, 04 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772629493
