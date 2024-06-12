Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45984169ACA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718203103; cv=none; b=Hs+Aix4X6ekMJ8BwqP2ygjRdG1HasUNTuEhoVD6a7oviIFmtk+pFVX7VumAbG0Wj/JBFcTpP8QPmZU03fWpUqYGQUUdrOryl9qqgRtTE3t4fmQlSqGl2x8GF+9jRBW55c0urgW6243+GhqBy72jGfb9xm349U3Rf6g9cS+ArSPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718203103; c=relaxed/simple;
	bh=CAWUZeWHrFzTxPOoxtVEj9Yl5LVKturVjnsVp/s6weM=;
	h=To:Subject:From:Message-Id:Date; b=B+I5CoCItDxoeUIDmEz+l0+NWYUwaLeVToYNaA0fNKqgUXGeCJbooTfXlJYo8w1iIxAsx2gDpjdfMqExPoh3FfuMKdDaUD54rHnqS3WHUEynvNo7gTr3DD4sGBPdC2aIDzXf0PU7XrmQMMfX7lDyRYU+9+b8S80dYJ3SOd/Pg4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb8M6yl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb8M6yl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7910C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718203102;
	bh=CAWUZeWHrFzTxPOoxtVEj9Yl5LVKturVjnsVp/s6weM=;
	h=To:Subject:From:Date:From;
	b=Kb8M6yl29RZBhhCXs87tESRTcYMpRFwPqChCblkYn4Iu8SKid/ok5O6YYo49Xq8Md
	 yHg+be2SZV46Z+vzd88t6ojyk/C+IxeMsC374N4I93elDXAsQzvvj0kZQBmKhRCdzO
	 OQvb0FnKhOSqKTEdr9NEMlBw+tK1DP3J3zXK0eheG+fLpeBD+hYldJuC7uZCiM//Do
	 DlaPBGErXZ+qsOgPl4ajmeH4SkgDShlSci4T+x348bCMM4xcY84jXVaeaqqJxXmo4N
	 bq3wYBnujQildBR35IeiTPxnNAxY4GC5Ou2Waz/kqDw9ReKTWlc5X4eH5bjzlzbCe+
	 5RDYkqKLEY37w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E8FC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820310277.29234.1594411849434871852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac00ccf49330a11ba46f9529e39205fc231f7669fe4f7ce4209150a087afc49
Date: Wed, 12 Jun 2024 14:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718203102
