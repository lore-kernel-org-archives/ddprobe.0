Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B222877DA
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756462194; cv=none; b=AbM/sN/m1CVPU6ebccZP0TO0Uoj6n/DOanpi9b4TcJqE6dmjELGnyJ87h/WOraSVsxnHeVza7pZcXhyi5bXJh3Cy9QMbXAM1Shi6kUaevgo1EN8aD/99y6RbZswiplYwJ6OBo0Tz1q+gNKgpqmUd9Q21CGLlj8aRcqnJ69Hd0Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756462194; c=relaxed/simple;
	bh=Uy6OG1QSGuiRAWvz22SDUZRtabvrB2jZRrQxH8DI7FQ=;
	h=To:Subject:From:Message-Id:Date; b=l1XmOcdWMDNVSLG9NbcDsNzGpBDh0k+jxthoJqlZ2ROn4QLd6PWQDOABadSSh/8JN8bdUYc2rTOON0aZP4tRbUw0QHc1uTrJnFpnTrL352CBQ0K3cfpeO25Tr4b0qMSC/R+z+bkP/63aMTL945/MhZIXSBVzEF4jNg3DwBuHbMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TenO065S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TenO065S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF68C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756462193;
	bh=Uy6OG1QSGuiRAWvz22SDUZRtabvrB2jZRrQxH8DI7FQ=;
	h=To:Subject:From:Date:From;
	b=TenO065S1XIeVhnU6cOKlqgZLRqUxBFsZyYc4uDmafW8cg+jL0JItFRgZSAOdhWK+
	 oFinU0m7k681dgJw6+Xv7BfhYfn3lDMqdvaM1cuPl5Pzzap6+v8GcCTwGIu7zdq9kt
	 eiTWLpdJsqsj2ROIxaVbpxuyxcDXSBbfFkEbzp76/E8XHZWJoNXGI1kUhhggeqVRhH
	 MMBsoWrBglKa9JycfI8mGP2OlsNgwZ4rM+BsDDo4AYzl6JRoQYmkYcjFYbP4wqPyF6
	 YQuRgT5ZGDiNmnnmoHUE547WEU/E12t6/QT3MOmjEXcAymCc8UY21qpszd++jBhnqy
	 bwiZFwUjQImmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02DCA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646219357.1949.3286187802655217836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae24305d80254dd727ef744aea967bd2bc5448fe368633059be343dba4c9b089
Date: Fri, 29 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756462193
