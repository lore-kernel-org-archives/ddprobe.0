Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BC07081C
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746283794; cv=none; b=jEt5HOZ3BoN0d3KY4qOpYgj9hm7a10O9y+0nZ5ouTV82njrwrAo0K4VejJ7oW/aEOz3xB/AKtmk1SjHO7QQhZfReoNra5muWOC0J+gUroeOzz8hBkheGUVTqLPuKlo16Cn71Yu537nMWZDK4PL4RP4laYR5T43NuXWb72rNKn6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746283794; c=relaxed/simple;
	bh=55vaF9pKASKT3P5jKLXYt1UoMLBe8gPg1dJnrsC30dg=;
	h=To:Subject:From:Message-Id:Date; b=ENChAWp6M8NbHjKxwhjTGX42oJAq0DEQBawPXxHnDsS89cWp+PeZCyNHALpYgIMYOJFQnLq7bUc53QOnUs8cBDLM8jcK4ZvI/RGidyMj96WFwh3gJd72KzWDLmW+ThHYADwHEtd0bogZAGH14hl7FIPNoHYDd2vdH8SNZypXCiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdgMOwm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdgMOwm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746283793;
	bh=55vaF9pKASKT3P5jKLXYt1UoMLBe8gPg1dJnrsC30dg=;
	h=To:Subject:From:Date:From;
	b=IdgMOwm2nRjjG9nkZ83uuQ+r0fb07yCmmMPiIzR2A8NjEwbp8nmBrVz65j3Ef7nQw
	 dJf6sAAC1citC8oyuJbJpOMLEr3GJYqNrURRpbxJgwrdwHS3+bgtoiDQ1uDmjDKSeT
	 4tILAGEpK/9DK4dQ7a7j515UcCGHRDZQrf5jMtoFbgN/ffmzZR1VPllZxA6o562s/h
	 V8gScq3sOL+LAn1pfFLI84MSCFHmJ5tZl0XWEbezx/EP4SWl6DA7m+qADyzKc1ztWk
	 ehWQfjVnWa4Yc0zxcZ5EcculG/SahxuRxd5FAPPoMmROy0OK71KnZnwQ2sTaImmwhq
	 dvzlEa2XPDYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBEC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628379357.1574.4269122693816897269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b9e008890974d173081d9158981d0a66be33e5249f5a155c84de022094924e
Date: Sat, 03 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746283793
