Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4024E1FFC50
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744489794; cv=none; b=WNeo7zm0ZIWcOT3GiwcZQXsp+j+TctGcyrwUgnxvcQxxQouZX0sCREqCMaZYsJOmB2FeMNKBfugIOQXjE9/SFUxrtDzax54sx8lDYTE01pnQzPLBthMuktejse/31chjvi2Xf0x7TWT067GlmbRqh+Y32iYKqyOz09ITsvJ0K/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744489794; c=relaxed/simple;
	bh=1ILVSeYnv83Aaxo0he7+tCBr4c01DwQIIPRNvjj4Bxs=;
	h=To:Subject:From:Message-Id:Date; b=oh0HaFW2kJPD78Ls15mgCDwEEGwoar5gCEMbsygl1OYqtH9jhcWGGYo2HuoT3+0j8QTTD3iuuajVU+J9znw7fio5IDcvsiNfp36uuoTXylOyT39ye1Ae94PnM5tTt3JnHkQP/9+VvcVjNCbOcpyv+OMRqR+ieW7dXXqU72TqvOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHmKzMod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHmKzMod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA00EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744489793;
	bh=1ILVSeYnv83Aaxo0he7+tCBr4c01DwQIIPRNvjj4Bxs=;
	h=To:Subject:From:Date:From;
	b=nHmKzMod7YE7pVlNW+7+AkW7S1vrz1AW2e7uaw3WfHQW9wKGgjQia/uHjjVJilFRb
	 JHfG2wyQFSi0LOnVFvbAu4nq+X9CrXa6aXSSnodh+FgL/xxRb28ufpi1uVcuI0G4Fa
	 mVVIwCX1Qah3bHlXFc60iqB0scQctSsEwWFNTKhz8chaF1CxV5LOQ1Bv+kr9N0jqvo
	 e1kOxtwJNHrYwb+/18HzRXF+LVLF0OolWw8fuQagRO6sFL0n3t1DMsGpAHATcSpN82
	 VjTd3nrMYWvmyHeL5yyGTc/enl7fAwY/Uc1HtsAoUtfXHL/RnFldn9VtPY+gnHeGi3
	 SqIYHIfPaW4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B28C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448979361.31034.15362871249629347534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed57a066fd3209ec9ae31d1aff81a86293123019549dd2453b8f174da0777112
Date: Sat, 12 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744489793
