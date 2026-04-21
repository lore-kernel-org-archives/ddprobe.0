Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F54A39D6F7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776778654; cv=none; b=svHPF6UYsNASffxJh15PTkJbBznAxcUkh2iwTKIfzlFDZ622QDQWP6oQG9zQ0uUnpjc9pZLyGGKK5VZgPPN/FKAD8YpUb5xvmghFdg4MGisHrsx6JZGaMCOBPoFYdowNI1EIX/E4YhFo30QWByatovrYKz4N2diXUWPeEAwmSvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776778654; c=relaxed/simple;
	bh=VHSJBygCVPKNP2CT1SCbMeF6nPb1Nl5JUrMLv6NVVrA=;
	h=To:Subject:From:Message-Id:Date; b=Prp2wAhwCRbuHyudjfi5P2lSTgq6jKKalG9L0uHwTsmG36FqptYHAGr8Ro3NaJF+Ix9/XC48e1kFV2NtLhhcvd0wpf5cX6+/oxjF0aphUuHMHJbjpbsxCDlvOTq9n1qJCrfPsZX6voMIedetsfKe7hcAKWXb0+MqbjnzzRgyYhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtWOgigT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtWOgigT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD39BC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776778653;
	bh=VHSJBygCVPKNP2CT1SCbMeF6nPb1Nl5JUrMLv6NVVrA=;
	h=To:Subject:From:Date:From;
	b=VtWOgigTvnZGfEqX6SYnBwGLDq8S67R6Et4TTIgcMEW55iSXVcPggztMShsxsQvpL
	 w/jAsO+Piz3vmbKHzbkJ7Xg+6DGuz42f745LCPfyWYBLxcZNnJNocRA/Gpp63Vv5HA
	 k0L0y9a6DUeyFAppmzFue/j8WZZRhWTgpg0Gh5OaL5DlG2RiF1mAOpnMTWAhKaat/e
	 bFmnMuh6qJD5BEmZ8QrHVplAm7sA+pjDQja/PAiaCSI0Z7AJ096belAKV4VsjT5IrB
	 y51glRqyKiI/KFfgaPiIzQ/+Xj03AXZdv8AEkK1OGVhE0SGn6StTK+XRElIrrezuUW
	 MLiADk5IfLLsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F8EF8FA7A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677865368.23178.7693134358508138826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2ebe4ff2ad785ac64cf3e009907dd5306e93708c3f9f6c08ae0a5037ce18ce
Date: Tue, 21 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776778653
