Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3365221DAE
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775572534; cv=none; b=c0egKG+bbPn50f2awXBGoYvjDOax0XCHS52MA8y7xf4QowPuYrO8WYgUxo8cc+b5acUMDNnFqM7NrD+PzjM6qm8IQ90rSAeOw9HSEVHeCRxmw4Kmf5go59E03QxfjsIqGiAxFN5b0CnYGh5HUM9EtU1w/F2ZGbREEi75TY1eSRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775572534; c=relaxed/simple;
	bh=seE9xHjsbD5xEchycW/BMEEt7Gh/ucum5u6Qi2MPo50=;
	h=To:Subject:From:Message-Id:Date; b=R7MUdyoA7WZPpUfD+T8WhDXW1ULSa6XzQTKRDChXvnoKVpAFOy5aw5VXIRvAtjuCWUMx4zrm097gtMewV2b00xVwo6mm9B5lxevofyjQxTeqqVy241yjtBa8Cvk5MqKnVxejCJ8ZLdX+Nq4MxdT2CzOkqI7dlaF8XNmUQ2FRWnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN4WIKNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN4WIKNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB16AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775572533;
	bh=seE9xHjsbD5xEchycW/BMEEt7Gh/ucum5u6Qi2MPo50=;
	h=To:Subject:From:Date:From;
	b=XN4WIKNn98+DlbvnH6RFOXEmo3bEnCZ+bhQMHCx3X5e4NJ7+M/bu7jji5gv7NtBxa
	 FbcbivEx/W1s4/fuQdIMDoSbwpdShLYjeCWURkyO9ElaZ9qW9Qziolql9X+VzIiqB5
	 NGMd4fTUvIdE/lTVpCxc6CIUJt3JTSj5Js1PC61pyRV/erT0Ez+E58AM2oE11xOZBu
	 CF51JQejqOO3wuc/uuT64LwhnTUhwi1QjKShYZL4TaQZKTg4Zzkxs5SmqjsXsQTQot
	 W+y70MbySEaFh8OfKFUj930m1V8eQKWssiBy6ymBEd/xQU+EOEPOOn3ObwajdrgT5/
	 9Dk+ZdxGORI9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCD7FEEF50
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557253369.24371.8293844363325532464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811d7d091222ccd4c414b52a18923b4af0a0591ec50be80ce333da1df8a1b54b
Date: Tue, 07 Apr 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775572533
