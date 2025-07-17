Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1A42EBDD0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752761394; cv=none; b=A00UbHgmxU/E+x+iCj3JfKK5wycOxU+GIDLz6+i/SUQq4wPD+pjqBb7DWf22ViTfV1UR5gnchTsaiqAhG/a6JEPFWu56FhgpERFILI963P3d4Jxo508J35u0LLkR+92SBkA2yFtb/xsxy9eK9HPHRrHnk3hAUdXdzubAhBJF+NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752761394; c=relaxed/simple;
	bh=Ev2/9T+oxIyZAnEwywI7FheeA4pfeHl17GDRZT1aEPs=;
	h=To:Subject:From:Message-Id:Date; b=nYLbkovaiVCViXzkTHhb5nPRUp5lXA3pG3SObDQTSI77E+oCmN8dx6RT2s6UVuKOBUUV2rduhQG3emr8lcceXAnL42ri2xy+N/xwZ1ppCYXJ3DdjaqL0Tn2GYaIwpw1zzeWf11EJX3MHZ6LPBk5h9FZsq5r5uJoKqTafwFZ7ir4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0HIDfAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0HIDfAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7595C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752761393;
	bh=Ev2/9T+oxIyZAnEwywI7FheeA4pfeHl17GDRZT1aEPs=;
	h=To:Subject:From:Date:From;
	b=T0HIDfAQsFam17wgSPvzmx2HVV527UvwGwFkX8848Ka393PAjySZuYxqYBfpKVduB
	 3RRcYk9Zvmx+FeKd3/J119WEKBAQDhaUCiFOrF/qhdvs8SSFjyHfXpPdAb55GDAbqL
	 bNi08HS22UcfUApBOCbF24aebOdHHpA9sHnVzWYNbVFpof8A7UbKppF+WAKH4JHvbK
	 7UIFNotgUXkUjfXlHL4pXbyapxw5MSokeS0FM2lxGryRr8DNZGrMKaqZfzayepzkZ4
	 deGSaE0dCSn5sElitnARBHXsn2KbyxaN9PtSMOH22Y1YkI4BahuLnkehGj+002ZL54
	 nUnqPrrYYDJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6EC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276139358.382.16427752823120729597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ba8018c6b3edce5ab3b6653c4aec011309a07c8517203870d196cc7cd32e49
Date: Thu, 17 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752761393
