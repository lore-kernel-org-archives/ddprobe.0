Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4FE26CE39
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762727394; cv=none; b=UJozKnxS4MXtjxKlJJ0lNZmMyvKdnmKYJy87QXrFL5n8uL65zd3V1fE/I87+nCRSQRz4Fur2pc9AwkWmcbo/pZDjQuT8v4Hgx6LnGZRCqRe/PeaMKowPN/1DZ0NpY8COm9z8KN3/DUFx5P/H1FYkTWvhptyXwKBJViJsf1kms/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762727394; c=relaxed/simple;
	bh=68ArCloe07RTg7iulbHXt4XkJn2jlCDiOqTYgllA7uQ=;
	h=To:Subject:From:Message-Id:Date; b=bm/uyO2uRTKNvFyfUkz+lab0xBh9AMUelAtb9DAjsjYOBRFdB0ebL0q/4iuJG4zIOGfCzvTJgTrG1S3XJjJn29dl30C1aTw4WUK2pwgznJqDktoae36fctLeISRn3A/m9/NaoxBt/BY84CyxjXBlKwiQzNU9ZmU13oDwALJ/BYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2gGySfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2gGySfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8F8C19421
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762727393;
	bh=68ArCloe07RTg7iulbHXt4XkJn2jlCDiOqTYgllA7uQ=;
	h=To:Subject:From:Date:From;
	b=j2gGySfsXhL0V/KO/7ztrGkSyqbJvakzOB41jZbrp1t1zwkMh07x7DyZ/HhrhDh67
	 xWL5sHTMTXFyaQ7Ky4r0gG9oHLgao/qfZhhn1oaCGiRQ96WlNIDLuEFN/vPkXYyISz
	 l8PISnQZUv8Q3torNQn9PgfKDqvYYfoGKfJJpUYJUKlFO06v3wGUOsIHGQW0VO0Jtb
	 8czrxtjw/e1XwoGZV1S+NrPyIZ/0zMhoWbD0hVrT8MdcNO/K0ASmNwZUnFSYts0b0T
	 AI6TfUE0KJ+INkWjZKeXTnfmaj0fXNj5KdpEXQwxUm4LxvwiY+SCbtBdnPPbDqYuik
	 WuUd01jpft7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99888CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272739360.3572.9084658794689664482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e598fd9b372f82c5cb7b7a9b5fafc2ac2b19890091e2ac1ec4c56d2cd7a81161
Date: Sun, 09 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762727393
