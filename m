Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFD61E480
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737794754; cv=none; b=CsuL1reUDNnEUwWaV8Q9JZhMBL5/Syv49Ohxt9u46EE+KIRI32nUOrd/Aidhzq6wSxdHhYBtpLzx0DhtBoyrCVBTbQNdETpj4t2Lud4QmH3LPf164CFYcPjTPS/cHzmvcCZkcvJYM6O9DWF9G6rJtO4fhgSGrgKf9rsZNsxxdNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737794754; c=relaxed/simple;
	bh=b3UhN/eCO2mxKfWMZENyc+farUHfiYJofahmg4ZL+e4=;
	h=To:Subject:From:Message-Id:Date; b=Xan5/RHol9VLCc/36CX76U51iQTFhrjBMsLVBzbpVChVHN6CV2LMw8tQEwBkcvzQyVnm/mn55ClhOIoEoPmTV+VzOjJBpINTbrhjR61bWd27pP/F59rfyqKme6BWipUK2Hp9Uwho3p7ZquuPGfRnq9j89xiOwdLafMbLhQ7i0JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjyinBwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjyinBwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEFFC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737794753;
	bh=b3UhN/eCO2mxKfWMZENyc+farUHfiYJofahmg4ZL+e4=;
	h=To:Subject:From:Date:From;
	b=GjyinBwgYvz9/KTonA1813Jqv21tHZcFUSI7qW7I1kaWAutCNjrEit9hRG4wnX/NC
	 eNPA24Lt24+0CcGQey0bnY55tKPMweF9Ew2R7g0d5Ibox8v5RNx6Cs87d2gstnCHX0
	 +rmi2/UrIzMmb7mFg8jjgcErqFNhg41QU1r9DNedl9vnvUr/oECn/v+qVQ0/79gBRK
	 fTKSoofM68f0Ta8LNIxEg3BJsXds7cirKjggFgCJDT7gi8GSqJyfZXAdzs896rvj4e
	 DWIFBPBuElbKtOW72XsWBUGN2XYsaViuk+FtPsigC2WnuPJ8+sOvsU6gNtMmA5lc3q
	 WWCI9Jzii/rRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99333C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779475358.25901.6011828020157438302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a886a9ec80df18521bd401a79e989dca9c1c7f106a1b4f07fa20c58337125fb
Date: Sat, 25 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737794753
