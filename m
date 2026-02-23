Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320BB315D47
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771864494; cv=none; b=Xy83wcR960BCXoC8HwoJNIBSOF/Cm4ZK94enkTv6hdutZpT1/EeGLE1chx/hFW6Y7K7J06HqXq87MS29jNLYDbyCGFP3feKfgJMzTj99Zb6Hf1nmBS6/qx3MwyJCd0QudMi+awgVL/GN/0aL1rgaEQgG6V3yTq5E3/bXljzX6NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771864494; c=relaxed/simple;
	bh=qu+HiYq/oLfL3YB7tBM1dHWgH9IOsHR4dKPMZ9ELl2o=;
	h=To:Subject:From:Message-Id:Date; b=LIMSI+aczoP6kR0EKoralnz2OwbXI3IBiYb3N8sxtwlpKixmlzj34gEftkPBrTZ2Z+IDh4nwibfHWh1STji22gkSlEhA3bdVUCNQaWDYbqZRdyr3MhCtLDqOWWZe4Mm6lpEK+rzJrfOzVYz9gq7l5x6bygHhEEHHq9MCytImGYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JksBos+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JksBos+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D4C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771864493;
	bh=qu+HiYq/oLfL3YB7tBM1dHWgH9IOsHR4dKPMZ9ELl2o=;
	h=To:Subject:From:Date:From;
	b=JksBos+310A8Yv02tpNV7xsrBjHWK16ALQIJvNohnJ1ibb1FNC8BwKFKknnaQFRw1
	 lJUe3w2TABskiO3gCPXHA7QG7wKwmhlUAtGquxaoCPUlehHJPCOz/tuQa/w06g3AFJ
	 KAy1zs376f+GViME9rEffWF641ItJsO2CPOGpw+fhyrtL/j/ILABpx8t5p8mGvTTd7
	 eq2dNC0wl9C4rtomZ9ufpkHi5OAwnMm92US5HFAQC0Vixgwznmwo1suUXttJXmeg08
	 GnDZdelHYyQTEtkLhP9ow3URlKuGeZ+oUS1wf+IliNQb8guNPszY57NUEihj6CjsKF
	 LZ/2bx1FczfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92184EC1104
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186449358.23881.9084982915368790011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01758f59a74121503677b3589a3754580588f6f50170cc575b849527898327a9
Date: Mon, 23 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771864493
