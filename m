Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897EB78F59
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763424714; cv=none; b=B4eM5T1P0o2O//UrNyMD0PS+vKO0O8nnrujUtQ6WtTo302uaiEPGwzlsrT93k57BSN+6mwZUyfEuncytkq6gcrEkGKnel9BCW6H5w6QD6qJjCOhBvDquzivlZHKHyxEWridIgDrW8kMOmq+tXXSJImNCxv8CLV0ye6ZzeVv1c6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763424714; c=relaxed/simple;
	bh=wPuWD4Isjuq6zlYQC13X1GLZPJQK71zccyFRxwCYHTg=;
	h=To:Subject:From:Message-Id:Date; b=mHqrZbYaRc5MmuSTaCc3fD8nbwAJ3tIiXoZ4aMiLFZDLkBxFasHq1AshMKdPk0Q4pG+e5iNMvcVZdsLkhxerUNNQqnieuzcjf+7qLPedAjF8oVz3VzDbAb8i4nXdUFGkgJNb8m5wz2Iq5fEY0d/Lww0bDhyphtjcyW/T60yYox0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC4/njDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC4/njDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECFD9C2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763424714;
	bh=wPuWD4Isjuq6zlYQC13X1GLZPJQK71zccyFRxwCYHTg=;
	h=To:Subject:From:Date:From;
	b=kC4/njDHETcX4iQvWONGLccCuOF+/ROcFXhj16scGNj6ETGmO5jCvMkuboBbgAgrT
	 CPwlS++sidSp1B8LYAbTqRCEKxlDCJCx90HlII9vctiYcZRC0HViqKMSMD6Mc9RVdA
	 cIUyvfRinp0H+e4tyEk8UqXrDw7qdFpt1IOko0J7UJC69c1WuZVf++t+9aGMdzDllE
	 CULuntmNc1Fy+DM0NR2tGsDgsqE11CprXwymqk1galSJFIEP0RguqoXAhc4Nwm3moE
	 4+h8AelbMqVAc5ih71S/4CVQyYAM/E9bCojbVpDaDcjy4RHGMfLb2y8bFaU8LgUC4H
	 Lu39/GAonFuug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96478CE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342471358.5781.3930256731389576120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494338fda5c96d86cd39760dc8d67289cc7e21385f6a462738d05ab96619382d
Date: Tue, 18 Nov 2025 00:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763424713
