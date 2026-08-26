Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CA335A38C
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787775634; cv=none; b=um8NKXC6z+Gs3DHgrfokuKtkVtSEkHInDE/Jz7J5z8QW2hawnudckTjHRlTUoKq6ychDiR+9MdFT1s9rmFuf2EZ7khb/hZbthTUQ+7F1koQqKkiKNZT+aPvPydMIDIVAWWe0crE0uwZKk7q9/T1E0HNHckB4m507ImZm/tKEAoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787775634; c=relaxed/simple;
	bh=O8gnPDQRQhYI+ZfgRXGqaaMee9gDXkKOXKtvSyPTJe8=;
	h=To:Subject:From:Message-Id:Date; b=E4V6rHb707HW6RU7+EaI2V6MS5a508m50s8G+c8aJ4eM9PyoqKEeCt3oHRYFuuOY4kxBz0KU3ZOC4ziZNIdHBScFlnRPTFwoM/mI2TIeHhAaA/90wDrFt8WvqtcTs6xM7MqyJdkOL24s4VHlSXLjoUxMtWf0WEzqkZAIP1+IYmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPMwvd+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPMwvd+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6901C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787775633;
	bh=O8gnPDQRQhYI+ZfgRXGqaaMee9gDXkKOXKtvSyPTJe8=;
	h=To:Subject:From:Date:From;
	b=VPMwvd+joPnXJzLV1hHOVmXRRK2StZc8QfGa2e/1C/YIkJ9VDwqV0igZ0mcUuH0+b
	 hS0/OHW2hnj4930UD7XS18+RwcRDVhFptJdYwtLhAwDZyPBxrinP2NXff11YQaPw0H
	 sw48vM3DrnMEKRbwRh+5MUJGcib7VQXvvtNRQh2+vjbhO9xu1sxZo1He6eRBNVpREm
	 ecL8RM0uZTGrovwSugP5lGihi2ilnpNWIi/yGI0vBTTmTrmbVlcem330XsagasWk0d
	 zWqFowzBGn6bYSVzPVgVUJ/aEa6m+g99/OXciIklTh5beHB93wmFByE7JEitAp2XpO
	 MKK9WJZ6571Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0987C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777563370.13786.14276004133851588086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295576895f0bd77bb2e9e774de5ce659b706e250c9f81b77a2dba00ed7c4566b
Date: Wed, 26 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787775633
