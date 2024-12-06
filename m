Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B4A819
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733447754; cv=none; b=rdmRP262lmQxXIp21Mlw97lJYXae0fXD8wF9Y/d1XpI9NuNS0DuLY+2uwcl1MYBBNnP22nSDROQkrdsRTUydHigc+c45YkgsprTy4XUKb3DepbpXAJ0u1039C7Pi2tT/8G7jYaQX/CjH8Lj2pGjWUx30eBuRJ3iJY7n8OBkNGfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733447754; c=relaxed/simple;
	bh=DgIW/UgdLeNBZXXn4/87sKj4/Sa3Awq0prwayeEQKHg=;
	h=To:Subject:From:Message-Id:Date; b=fnrcTERhcRW3rQyw280I0VcsOe9vjcGsGeOrMz4mZ9sINE7oxsQtMJ25DgP89oPrj6wvX8QfRBwiH+OAkZmMUaxjRgHcM1YHTdF8Y+WIwz6vCV7PSz8JQ5ubQ7OBJgZAhVVTFuoW5w3eJlwU8lHUC5f1ESESWk6t204pYckd7hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRPVX4iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRPVX4iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5D8C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733447753;
	bh=DgIW/UgdLeNBZXXn4/87sKj4/Sa3Awq0prwayeEQKHg=;
	h=To:Subject:From:Date:From;
	b=aRPVX4iqK+RmkvpK69akFLI3CMHk7pN+mO0AhZaKBAQGWAs+5y6Z68An+QRbmSU1A
	 qu375IzeHoPX1ywoQm38vvgTeEKbOvwTBJ4zJga148BW022EhG0mYlv5VkTJsDNtIf
	 diVsM16yMDJUlMfKRxgSTvnhEAON8jLd/P+LO/+oUzRcex08SQ9Gf08L7EOr1tm4Pd
	 OluSirLmiU5Q72e6M1uWqojdjmqpNsK7wteDfi1HQ6MChg0z/dgeL05H5vVDBUY2lM
	 55h/jrPhsAODfv6A3blqirpjowiptqeNmWYwMGqVvx8ecPwXbla/086alv5QY9ywZN
	 LRsUIxwmWFcww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98952E7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173344775361.10830.2996569994302492109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5674e3831e21c29d85eea5d71596c2554356c18d684b0c130b8561de2af054
Date: Fri, 06 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733447753
