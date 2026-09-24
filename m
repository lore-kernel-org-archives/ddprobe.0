Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA7C13777E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790211034; cv=none; b=h8U/063x+1l6xKo6cz6ry0OYqWIrI/s5qEiCk4q0c+UhM44BCpXIQUrNZ3X71+Lvy3kM43SSwNdcWZpEjKqj/RaV0Hbk5HTjY+VWOsuXeux7Aja3CE/KBiugkNTJMcRM3Uys0EEhvJNmD1RN3pP9+tNj2rSkS11CkSANybcC/qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790211034; c=relaxed/simple;
	bh=FFVs0oxv7ZJoUBiPH6wPIPSPGAbyzvoT3sZ3hZSGEPs=;
	h=To:Subject:From:Message-Id:Date; b=mYPU0GiAnsML4U0pIo5WpuFgpsVWb+YaC3JlFWkPhld5hO21Z8zAe4lwCls9CCqfiVte9XtYCGNGGQF0Eqkv4WlVD0kFN104ehEJNCCK2rxzLO/Sek3Mg19Zm96qC4DBNDRxQNVmUUZcP7SCb1UbDq6SLJT0eqxqJDlFaWUEsro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwUM06Ty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwUM06Ty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6108C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790211033;
	bh=FFVs0oxv7ZJoUBiPH6wPIPSPGAbyzvoT3sZ3hZSGEPs=;
	h=To:Subject:From:Date:From;
	b=lwUM06TynF8Z/3UPCZwkUUBAYPnTuSX7wP5SbodBAK/kp3BQ70D8K7pW0O14Ktrmd
	 sU3ro+1pkAbI5i1EtxeFbunQ2ikX8saOpBp3ijl7oHrUOtzevL/KMk7UN2wsYBRjMl
	 0P2PZcku2UDp6GrH+LU+ky/hjtL9Pmy0TkJVwX6fFmGyrUbqS0QRPSGRdvfGNzwbHF
	 26Xv7Y5YxK0629pNfNnpk9fClHsG1kc4HMK5hgQU0xAL3w5xiXYHA6oSFUVtJqrDfL
	 EvHuED8/ii8OV+yMLILqUnrwqqRwy25rIIN4Ht8H0cYJbA3yy5lHe9aZwgfSRd8FXh
	 iWgy43ABxTa2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40D4C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021103370.15686.1440969277603058375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8101f95bf136447eb4392f4e80fb773e7055fcb663f0b9db08092788f8dd07
Date: Thu, 24 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790211033
