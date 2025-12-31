Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6F23090DE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767210234; cv=none; b=WcHEM8k2xZO1PkKe6CvYgnO8pswZ/FoT3EDoX7ptigzeftLdiXpxqhX4404VcYlm92oFG4+YW3h62iVbvvDUWLVIk8Dfycs3RXOJw1py9emCiGfMkPxSDCcXFZ6vhm3zSXdokl1zb7dDXgYlhP3WKZ4t30kGWnuY5aVZp/vchbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767210234; c=relaxed/simple;
	bh=MTda/8xlrd0gdEZpiLw9oB+IXVhAfxbdeqyd29UzkGA=;
	h=To:Subject:From:Message-Id:Date; b=l6x09oSWm/ayoHLBM1znMTnGNutv/H0qK25wpoPcTDuzFCLfNCd/Qq90XFJf3GB2VoX1IY4K60wE2DbXN/krr7XZrBZPyqQOZiWOsH4Tsw7yKbun70iIHw1E+xsCv5NO89tghhryP/rk4z9xJC+53EeyLXVvlpLn4wqk2nWVzPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNOs9lOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNOs9lOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1F5C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767210233;
	bh=MTda/8xlrd0gdEZpiLw9oB+IXVhAfxbdeqyd29UzkGA=;
	h=To:Subject:From:Date:From;
	b=YNOs9lOA0RROyDj1uY4TI+H0uNZJVPP8XZoEbzRC8gfqTik7GaUSsYXK+UOlZxfoX
	 I7iqer74x/WK4MLMb6TSfQqqBBjTNsKPaZsB7iWDfLbPi7lrEf9ccjoz4Re/1NJvtt
	 +zJqYBBAYQ3fLIxrfnxaCaca76+GMzIq/cm+uZnwb7HTBuqV2hql0VLaiMoAtNl9G8
	 qhQJl1FQ2lmHGnEKRss61bEZuDmDq67s2CYxFkEk8RDmAdARLVfJaeIJiNN50sfYPC
	 M2DnjIU9dLig0wNeVYM+lJe1vJbJrVvlAqaFVwl9q+7aI2O1OlNOCs+Yya/RVXS3gW
	 rJFWdGZCV9LEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED3CEE645A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721023361.1861.9283532704345065414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c256a2244a2d5ff9596e47701f70342edf5702e6b1bca0498d5dd81724088f
Date: Wed, 31 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767210233
