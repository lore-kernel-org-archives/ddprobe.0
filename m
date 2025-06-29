Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2406421CC56
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751206194; cv=none; b=kHQVacopruHj+ZO54ANihnfcWFKbDn6PAoxRm5RwbKKUptlm72xijJ6sMCQa1nT55DTAFE+85pRv6EhwyAvp9UizBbznuKpW5SEJez7DW9EQIm6pc57QPAj88s8HKQLGYRUHsrj8bC6cprkqtEqNLe7N9bN8+yo4QdmvPj3vNXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751206194; c=relaxed/simple;
	bh=NAa2cJ0Ap8z+2abjauodezV6FkOJQX8oRCpCA6gOYX0=;
	h=To:Subject:From:Message-Id:Date; b=rYEukmGtSw9CFTKOSXVrRdVbrG5WGyE4OXVjTPGrQ2fof4JvnnpRffHmpF9fLUGmYwMedEfW/8VBJlTkM1TkbTnL2VM+BApeWS/fOel0K2izMiuGNiBSwCzExf0KwtKGCl8xQYj3hOob2+H1ZjF5VRXDaQ8VQUSVYbylZ7Ki6Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RG3WeKez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RG3WeKez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A094EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751206193;
	bh=NAa2cJ0Ap8z+2abjauodezV6FkOJQX8oRCpCA6gOYX0=;
	h=To:Subject:From:Date:From;
	b=RG3WeKezjYAvt/eMkkW/CYnDPQDLqHs2ooqDOWgVpInkDXCiEQUId0oTkmSrVLepO
	 mYUVKUXvA1zj2V+6T9xmpp4WE/+ilZFNI4k0NJ2JuhUgBurvpDl0J13eFw/s4TVOXh
	 NK2jqurLJdtnnLhYJX/xAjwu782Z7Aw7QuivkD+CYjJaQ9462+h7lJJ4WEbXA/m0VW
	 uiJI+daVTA3MKj+23l01FM9Sdkv4cfFn9h4IgjHNZb/G7aL50fJoNh28oN1o/XV74H
	 qR/Gc4pWvKX+ZPqIwpoKWQarxHQNma5C9rsngM/vZDB6d7tEqYGWlQqqqvbKr+zXlP
	 KURikQBdt0udA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E0C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120619357.28624.4697864621911815119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d5a435d7043d20c227ccfa8c9e9565c3a833da93de61d214dcff0209dee232
Date: Sun, 29 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751206193
