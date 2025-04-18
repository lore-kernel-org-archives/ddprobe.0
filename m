Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAE91B5EB5
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744987194; cv=none; b=dudjIMAKixGUPphhkmfctL8EMY7r57rPHxg/vaqjN0FIKr9X6JOx+stszE6De9iei3satpN1wvk+ASBuNSL8ZU52ckCcN1nvfeXpROoY9Rxmpyi551N9VuQMI+XavxzsIPYGAs2Pp4C4SSWO6APe4DFukAluy/80cJatjrpkI8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744987194; c=relaxed/simple;
	bh=bpCxZ1zs7zv1wJzOngAVyqciIwxLJOo/0NPmbLGDjqg=;
	h=To:Subject:From:Message-Id:Date; b=T9yZgLnrojw06Ih5wovk7jjf0YLnMHwu0NGcncPkoWjhZqDwrrqw4il8PAJX5gUT6Zvdi5A8DXtGGwaiwdTkgJW5snx+PfrJm7aJXNbByNL2r1hzEd9L6zpuBCcBKkt9tl1mkiEosUQ8OR+rwkSiF7YBI71Ep8KHKzfsw1FzB1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1DMqks3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1DMqks3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A902AC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744987193;
	bh=bpCxZ1zs7zv1wJzOngAVyqciIwxLJOo/0NPmbLGDjqg=;
	h=To:Subject:From:Date:From;
	b=P1DMqks3eWCbGBfchYhGjNSjcIctBkUh/7N6k01UaNcC4YdNjWRw737Y5EtaQ0Rlr
	 vC2/WvFFrdtqNnGhDEgmue9T5WPGSp03FBDGNG4S1OWRFtrx9QMhr880w8pbl6qidx
	 pOXHBWOUg566Vb7I29fNltpe2mKaJVZMKhnJ5SioYKzCvEG8d6SehwnpN29tmSxen8
	 dGAkpz3K5ntl15QPYEVvuJ1jRoeZY2PeZkGq/LvF20V3Jmkei8P7+hTVcRREkvvkR2
	 2FnNCMDhBgArp1G7nN3q6FXbucFioj/rQTTvsvz1xNU1mQ/4lplbF4IjQnEB0d09n/
	 XI+muA6NL+q1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97783C369CA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498719361.534.7776337942380534862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c247f256aa2087b4ed48928fc773405b9ee1bb45be4325d875f5198711b373ee
Date: Fri, 18 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744987193
