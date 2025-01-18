Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A56351C4A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737230154; cv=none; b=cVAwheqFIcaNQ/27A7iMW6Iqz38yM3MbVX9zvFTbIt0PT7lEnvcckQyJ1lrtI5YHKFX02mu6ozlfYjAww9x2ka92KpFw7fS6JzIsBTsa0xhqYeyS2qBsvaGibbrfUNPRmwxI1OraCaWrwuOcjovQSp76UoipBEg/1kJEuNS/v6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737230154; c=relaxed/simple;
	bh=kPh/+mtwHGdcWBsOj8sEmmQur6Hlgt2AMgUpYAUxBGM=;
	h=To:Subject:From:Message-Id:Date; b=ZoZUTZZP3kmiAB+PKfzj060GTC2/9uJxKxNtMuGxYqby/uSh5p1TGbhmhAAGAyEfAYdqbGsssA8CwU54eKVH80ZZipJ5WJpsJtQhJh/f0hut2fx8gpxYDtpD4/K0CijmcPBw2v7TtChJ6sOElMpQW3rKgnUnlCCjNULh78YNPC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCcfbtDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCcfbtDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31A7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737230153;
	bh=kPh/+mtwHGdcWBsOj8sEmmQur6Hlgt2AMgUpYAUxBGM=;
	h=To:Subject:From:Date:From;
	b=UCcfbtDMhQ7GApfUJgZ486b9cD3jBGAH0FpLlIJ9y5ogK6D+ooChWur1HOE/AyAcj
	 FCCD0f4FvRBoG6L80f1K32ICXJw2wFA6lpA1bevuwGpmiZ3n1W+UfCiIlEmES64uZi
	 99EXYcm1XTQsSWRNSLV6D+RhtUSVLiyEm1ccyzgJG4OTwROaTKsZ62wboV9eeEDIEf
	 jRB37tm7Hawrg/xxjXxk0DqQT5HOl+RU7h+YB6Pon7cws+X0qWyGDxbvztbFhmODM+
	 9RtDQipjzUNPQvW5xBj0niD+xE7pAbzqmuXYXBqP9tV7BJfFr+Ss2FH48WbgXKITKA
	 akmiBHrMiE/yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4FC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723015358.28395.13282581162554563817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8221a09da1896684d77786c4e36287dc0d23d68868d039e25d4dbdecc6ff25c
Date: Sat, 18 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737230153
