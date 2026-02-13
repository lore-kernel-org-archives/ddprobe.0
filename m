Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DD51519AC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771025094; cv=none; b=lW7veJ05KHKAB3TJKAXuRFB2zYiWWpQrPPk4Cc58WwrSLDWnKSPNwOYXzqugA500nyeBH/7IF/I2qNFaEQ8yKQqOcWx90LS7tTuPky2MHeGnaCXQRuF8gdm8foq0cGmfQHaH8SzledUTQjY5j5J+QSiZWEoNN3EfON7oK3x8kTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771025094; c=relaxed/simple;
	bh=F05gl1hbBDB1a4/QAuACJHHnXroeYjNi11zFw0GPg6I=;
	h=To:Subject:From:Message-Id:Date; b=pVSRWK92C0BQrA75NT4atGrmtGCYtdzC4+GdZJxA6yvWEY0nEloQyhXw5NL0woTOov8u+fJH6MSDUu9h6OJ44MR+LNrFqeaSrYic+9+DzTyPQ3VTMRdJ+WpR62Ug2C8gGXL1D30TvZdrphgArCOTEavw8oTW0H6PkVn9u18w/5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll7pTM68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll7pTM68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3BDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771025093;
	bh=F05gl1hbBDB1a4/QAuACJHHnXroeYjNi11zFw0GPg6I=;
	h=To:Subject:From:Date:From;
	b=Ll7pTM68zQWHLcuQbc6Tf0g0+VpeFMaSRNdQ37vy6k5Mn952d0tBthqHEwl/kQrUp
	 Mh6LwaW4HXEtogy0bGv4hgZ3+gnqvhuxwEh6fCvUXqu/N92O9L8iJ7iRsc9a3qeMPi
	 iQTSYCMOPIpBRUP78nDinoJvSJyJjoOxx2VqyHOvlbZ6Z4iRZXXFLqB74Wnf608EZl
	 nGXZN5IWcR6HPMFJ4z6FE6AF+bHZQfoA5JBJuJHT7l9VGlITAQDU9K6+vl7CI2zNdf
	 bT9YAy2DEhPQF3a+4mx1j+AjGcUNncqFYgBuQINO0M3jmstJ/uzZS4kZTxyo7u4O2T
	 ORtsIPFLZv8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0E6EF99E9
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102509359.10567.14587442891955974253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1499e2c431493e55ff89a1b08fb5ff1a080660e240198eba9cdfb5a2a991fa
Date: Fri, 13 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771025093
