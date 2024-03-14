Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3B05BACF
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710422297; cv=none; b=sj/lGpNopidxvQjN3ePkYHi8hqnB6lSzk674yaH4anq2PlBs0/BET63vfGeKVTkOjQeDREZTONcIaNs9nC3rMGS9In8m16CebBB9ao4O0ih53GSnQFiGJEXMFk8okf892jhUjhHhh+D7FsP2Ipxu9HntfjTCp+VfHrPH0JMwzE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710422297; c=relaxed/simple;
	bh=ffkAS7TaASj9WtB/Q+YPMTGP5PQWIjxo5RSoMuC7kKg=;
	h=To:Subject:From:Message-Id:Date; b=BZ2MH8x/1loQ+3RlxVNMLs1uAWpEE8I/dmEOKpOWBMDeSpsjgccEl9swWkebojOxEbH6xraTO1W63HzuFXceGDo2CykekrFcCQYnK+MINOAuY5S7QUqD60m1m+mhwGCJ4Pt5nJrF2I6s4ANkCgfK1EcjQYvjnXEYG+onGxFpeLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vI2huZo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vI2huZo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC66C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710422296;
	bh=ffkAS7TaASj9WtB/Q+YPMTGP5PQWIjxo5RSoMuC7kKg=;
	h=To:Subject:From:Date:From;
	b=vI2huZo2JBMs9J7btoFkaLQhq3Z1tSLskg+6h3Y0ndfS4nD5A+u2Y4sbSo3NNqcC7
	 7dDgpadrAakjqcHdT0KlBnX0eMBEIQ6DvF/akGN2oVYsHt77rCFXFBNwm7m9iH3UGq
	 8NoELepxBq9IkjUk4Ia9PyWjUM0dF6ulIZprI0LxTmtIRT297mFUqH5yP2spOVNduh
	 /ouVL8dzoj25Hc1ZM77R+SixcouQQBxenOeI9ANIZ/RGOzZJomc7g1g4yCQSvOIGkC
	 gv27dYbdJtDGa7U4lm9sMDwM1BnH7gynFVBNtC1ukGNePYbYeqU1xodhS9bR/bLdTg
	 yafKPi1c8w9bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72422C54E60
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171042229645.17043.10511616106120440916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb45d051c259b5ef6d323eaa38076246b13eb46a0fd8a710d22eac7640dc0a08
Date: Thu, 14 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710422296
