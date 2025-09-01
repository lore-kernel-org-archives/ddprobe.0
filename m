Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EA12DF13F
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756744794; cv=none; b=Dd4XLvJsU2Ff8zI/x2iieic/25UeV7DyCvPBYFEXBKUroVyau563XzwILu1GkEq6LoL5Ydc8+kxlsq8XH1WKMXRxkO99/AccoA+AtqBHGONI3vID1/38V3Kpz3tuQM3dI/aD9ZGCb+IkM1rNJCT+5hrW1jO6QJaNV/Onx8GZjMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756744794; c=relaxed/simple;
	bh=FAHVRp7WawWhaqIdALReGHKQjeqKFtqPYFFmfkJlVjc=;
	h=To:Subject:From:Message-Id:Date; b=pvaJ4SriuIwBu2sAZ+07p7vBOA83J9nKwjqRF5a7I96TDWRUSZMb8n8CHAWejcBz3liv/DtkXAFz7Fv5wAFsk8uQaqMMBtvvU9r0vFSFw0zuVrGJ5B1pzlDSB41nLyUNIqsZMyCdQK4u1xOI/G9H+8F5bNqM99NHcRFJQMLHksQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuMUAjAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuMUAjAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C44C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756744793;
	bh=FAHVRp7WawWhaqIdALReGHKQjeqKFtqPYFFmfkJlVjc=;
	h=To:Subject:From:Date:From;
	b=FuMUAjAr+3WodZ7nlGwrzlGgdIgtMoXA113IlqaZ3OuX4Wfz4W8zJJf18KKBf+t+y
	 LtWgB0XSosqex2ydRTU8FiQEY6T1UvNKefoRP7cWKmeeUBl99yIlAsSXafOzMmzrzd
	 5SmOgI8KKZaAsr5r6YeGP8KN08PDNBmr9FfGVWAdZHZenLZ/fXZn3a/kaX/CAS5NWT
	 UUwIMTnvnM6bLDQQYoEDZ4xaB1jH464S2Cfxrh/6VjoMiRtaesZhsN/pmkTY9ow5+I
	 ae6vUkmuucOulRlB7L43stXvbVL8wPUTYIuQjKdCioAkRTFpi/Hkg4sqZvq1C+Q3Th
	 qhohxIyWf0eXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A44CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674479357.16944.7840096940527699573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b9f57ac83e9adc38a3749ee7ef3feb5c5b352c583556dd665bf78ee3299af0
Date: Mon, 01 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756744793
