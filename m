Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1598A1F419A
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771677894; cv=none; b=GfDtW5WhXHwsMKZCdhRG+2fkhP1kR6W3PUQOhnvyVioClyEvuH4IIIK2ubPvN4cC879eWw4rv0XHrZGmwtN8ksw5027g6Cb0/WcW8S08h0x8L84JeF7ad3oW/KSsCuphVmrKX2GQM4+7vrqeHXODRofseabWLqz/rHLcih4tTOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771677894; c=relaxed/simple;
	bh=oU8q3+tH/45x14JlHg85o9PJevG3Xt4TVwoG1qsW41o=;
	h=To:Subject:From:Message-Id:Date; b=DV13GqW2oYGawfNiImYaED2lz+/vjT0y1WzdbKVoQecsRrVh+x8+hqeD1EGjuDI498Byfnz5RwlfB7zNFEnKZritfC8LIVGOArmku3Q/INhACVKkExo3W8+8CzDXBRscJbf7NsJBHWq0FYzLIg8BfZAuTKA/hT03MCoR3nXQ3sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1nIkRrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1nIkRrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92ABC19422
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771677893;
	bh=oU8q3+tH/45x14JlHg85o9PJevG3Xt4TVwoG1qsW41o=;
	h=To:Subject:From:Date:From;
	b=I1nIkRrj/ge2e6n7qT+Ms3qISqBPYfrzFSgWkCyWYXSDzZhdFm3PkezMcMIxYx18t
	 0/6k31eWjC/r3fshtYQXOfnRLKYP3ePznmVFcP87CtT4skc924Nrz+6pzP+IoSSVjv
	 OwJdge65aDVGz1LT2+1w3vz3rwEW2ea4hL9xEqo7jJPJPGl0nHdvIZcoBotVIY+7TV
	 ty9RE7rOLuU02Egmjva0j/4608WEIhdXi6jqVBNms9n2uVzoUxa2vbTW4wZo4F5Nmp
	 OcspzXbyp+xZOa8VB53Yk5nxmi6qzKdgQ6PvvQm0Zf8D3Vw3s2iKEB5h3/9Kk3zH/2
	 /OxfYwnCxdz3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9830DC61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167789358.30330.1813985435870264624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245b3e7f046017e76c62e865ad2ec2c1670dd2e09aeb997ef732708e9adcc5a6
Date: Sat, 21 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771677893
