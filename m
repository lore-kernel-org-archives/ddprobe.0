Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E23B13C82E
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752287994; cv=none; b=ZWGH3kEJlhu77qepdhtlV4MygRgZpW6qLpTnOa1aCkWFMs2yJwjWZVlmyvMneod9HfJGRVJ5eQQraH45+oUv4tmC0FEo8MrcujwBieX4hwk7Q+UdWBodzoJ+9ohdVGjZM8OPXmms/FMCSv2Y7ChRVFmFoJ9jcJACiMMiJ0FkqlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752287994; c=relaxed/simple;
	bh=pn5gs1bLjIBb1Mh38NpNyhNIlwR1kfHFt6rAGEUYh8A=;
	h=To:Subject:From:Message-Id:Date; b=pfg6mY7BVH4dx+LKp6y8VF0KJtedhIyPt9gweyP9HyoUd3+eCsa3+Yo62VVv2H/ddNTJ4ARV4hRY5aIe1MOIKexAyV3HXF+0pP0uZjH3tWEKN8fex39L6ulJGNJlJ1nNzuzBdSpUkJscFoSV3+g+9WJfV1ZHQK61Z62d7Jpmyrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUPYM1Xz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUPYM1Xz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F6C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752287993;
	bh=pn5gs1bLjIBb1Mh38NpNyhNIlwR1kfHFt6rAGEUYh8A=;
	h=To:Subject:From:Date:From;
	b=EUPYM1Xz+nY2XYQgpSIov7f42DpGVq/8KmvT8dpCLkFr83oQKyHQe+mVJuU57JwsQ
	 eD+D6xm7V+Y5naRiyYRE/NmUZt5+lu8ng/IK9dhX71i63ECcPlqlL8FOt5eU/7Gmgx
	 07WCttm6FUVIdZxRAOLmFccTQHOy4Y3fiuAGsda3YJb36+s+x9+tA+XVIWBj+6cX1u
	 jf5XIWpBaItKKMzUl9ouCEuvbuOeYg+4s4sUsRnvJe77dPkhc7nhV+bNlsnDUwH6w9
	 ss0GqRNpXtoDoc32iTf1FwxM25I0/IWR2x/4jLS/sQ92tZFTJeP7q6V1Rs9z96HJVZ
	 RmAnljvWArk7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92052C83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228799357.7497.11221633261580766151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ada1610e4df28da8047904b489b67fcaa28aab6ee38af2408a00744d887684
Date: Sat, 12 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752287993
