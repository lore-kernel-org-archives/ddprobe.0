Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6A2176ADE
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747898394; cv=none; b=IIIRu+66f2f/hL6iZrrN8XQkCrabEWubGyTK4XI94157ErxmhC/zRb7DFRV6dNuZpzwf7B2YyXpw1ZvybSnHRmz0qfFKibe1Timg4PLx68YMstCJfL4AQ+DZdw4wB/Tbv9GAXeSqdwerOo2ZKCNdAHYgu+WBchJ9Er5r4wmwBMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747898394; c=relaxed/simple;
	bh=S2swoLhcUjvNDXRff8TCHaYmaLwMamKgsZN1JRNFWbM=;
	h=To:Subject:From:Message-Id:Date; b=giKGAoafcl7b1/Mirg4bqEnFP9EOgIrSe5YQ5iTkVfzktg0lg4EpiqpgY5ttBM+PiJtULRRf+3z6huKP9ZOhrbuSPpZz0At0q4T/ya3dMGQMzAodets0huY4P6KHeF7FJwcxV0X66V39eHsh70LftA1MwUcwtCjVEmgvulCWMfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ap7CTrwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ap7CTrwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37A9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747898393;
	bh=S2swoLhcUjvNDXRff8TCHaYmaLwMamKgsZN1JRNFWbM=;
	h=To:Subject:From:Date:From;
	b=Ap7CTrwm1myN2HDR7I3OboScxBKzisCTS7E0R+Unux7EaITN1jEZQ+W8rSvx9Tw3Z
	 r4sisf+ljSlYdU0eWNzz+R7J70GYCE+Di6dkB8xCRyaiX75pyy039ySPkDmEHHaXFA
	 YHwWLXS7U6iJgnez8eA/1+sEK0zjwcTORA+cB5Kvo951oFAqsHK9lOKkuWJ4eo3shR
	 MnMY74xdVErE4yDoLhoxlhgG7BvufDzTH9od52NfNu14dfqTzDXDYjJtJA9LJKN7LF
	 +MJQdsHaoHOHstQf0zGGJr9zb7inFUuFADGgZLhTDSBGMMXLLCc0I/l1SzopQm3N8a
	 iyThYg7LubK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90505C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789839358.420.6955409377443766591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebe58a7fa8abf76a9bfaf46d0c2a70d4030a995573218a10b39648e3fa5f040
Date: Thu, 22 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747898393
