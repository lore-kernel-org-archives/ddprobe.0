Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DBF3A1E68
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766786634; cv=none; b=JXylBtDZI6tvBGa1rlfRk/d7SDdXSvvOJxSsebIc+Lbk43DfE0t+w7zg2NETQpSptWgmXJmP9NLUzFpZsVWTyH0QkUAxLLFyUDGHlkkNRZadtQvn9/fDxADtHFtVeXwKdFZjHuhQ2+h7yCxHqrLVv0MsryEwmkMio7kqr3SFMNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766786634; c=relaxed/simple;
	bh=5RBE5i9EfSPZMYXBkfC/JPgL2NnU/7IFybUPR7rgQ0Y=;
	h=To:Subject:From:Message-Id:Date; b=DC/8ZP4B0aLo6wnX9unP4F7QWLo8qJF3EdlegCY4qMZg9i06uVcUvLJl08dKiXNCNAOmv78Iba40Cd4EY4Whgs4ZiZMiWrgIsXl1FK+416afgsnjQaLdVOq0AXuWtZonr5BF3fkyTFdTjx2q+QaocaS0Tc+VebTXIMh9/wWCJkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fs5dp5gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fs5dp5gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ACCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766786633;
	bh=5RBE5i9EfSPZMYXBkfC/JPgL2NnU/7IFybUPR7rgQ0Y=;
	h=To:Subject:From:Date:From;
	b=fs5dp5gnEhcUe5pT/3TG1IVpCTiMybaSfWnSnIa3zdVC0KlzKacj41hrFO2HYOegA
	 Y6bFncuq6FkiCVzDmLb7eLknVeoyyVrjUporJalAdQt95MN4DGKzTYfoLhC8maSMLW
	 pYJH744vJgrOWq7i2JIP3QJITS6l/yOqrqKOUPMg/xQykwzYbBpbaM1+CZH9o/wivE
	 6KL3bkxDXb9z/O7vemOD6tfQgI4yG7oiBHxDPjZP05mYRI3sccbmykeU3MKvqeRD2E
	 DyI7RIFqkf8FhywoEYb076tYcS5/631r+kiYIKb/kDkIJKiK+naSeZ3/jb9hYNrMWy
	 y9JonsCCnQNPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24DCE8FDBA
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678663361.19614.4867445469668144144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9674edc7d2228634d48b3aec0c93a63b83976ce6cf7df32e3e7b492f1f5fbad
Date: Fri, 26 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766786633
