Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E00E38F82
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736339754; cv=none; b=sY+C3gI2D1i1vQS4PCEZ7YYtT1DSHgCbrCl3cyNispwiRz/PgdbCoxZxzWLCVNvTlJNtqusOtFZg+8ztNMfR3RAbH7OSo9iQV665UJibF7TWeLszJ1mkIYnqrJKTb1HaebcnBg8LjPISI1X1lBpvP5VieD5OzzDe2HH2nTbm9kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736339754; c=relaxed/simple;
	bh=w9fKmVi+1tQrrzgHucfo9sITWfXAyk9jNIZIoZSsTHU=;
	h=To:Subject:From:Message-Id:Date; b=Pd9GFLU2p3/S25+k2aTr8Ua/xfiysBIG7ekupUWzeBqP7GNQ4fTWsrtRqYZzZzktXenjE3iTehnYgMmz9raGasfqHN14/qfvPJ5jT2Ai0Veu3p2RlgNTRCh/TykhgDKXWjjkoWOSUa1+wBU9FfyRqGxsSHwq043tGpEyMhh2Luc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4R+NKfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4R+NKfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17B42C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736339754;
	bh=w9fKmVi+1tQrrzgHucfo9sITWfXAyk9jNIZIoZSsTHU=;
	h=To:Subject:From:Date:From;
	b=X4R+NKfrbv9AqfzShzOwx1dsoDid4QyoZobl/1ZMcI7xIMTzprbKPKB3qq+EjtmpF
	 2IZgPTGr/otsGgLmpQJ/q91IKTKJ8BvZ1dbSVKt7FjwZqPMkrPUUQ4E6q/ZA63XjNB
	 FkiryyUoarPdX6S+d3z+Evn1Wyd+fq+22BL9Ikf9j8+v3ytdMsDjFWjgwircmZ9c84
	 pnuc7cfifK/zk8GJsRNgtRnWbfi7Px+S6iVJDWC5HrUwdM8WRClgzJVCbcAfejOezO
	 9MS0U4xsznU5PKL6bgE/d+vPwOKjaMHFmviVUdZ5wL6bHRie6tTKXMtbmvHoArGPZs
	 Ac325D/n3Mq5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE736E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173633975387.11488.4646046878164108172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfde1f3a52d18a369207db925403088613345914167da4fd5e435d3a49d5a640
Date: Wed, 08 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736339753
