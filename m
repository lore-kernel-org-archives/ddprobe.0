Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294F8433A8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746436194; cv=none; b=EhrH9v1i1BYVjiciYg5ixLrAgyu1hdCIONBlXdo56vTdrGdjNgNCYJgw8kQUCtSKNPsIeWGJ7RCV3DfYF9L62p8s/0FID19lb8D20Zl3HZHSxXJZEuWqTsO4erqxJgsMXKzaOyaREhJ2YKHAMte0lGArERmnDrJ3JBizi80vIYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746436194; c=relaxed/simple;
	bh=HkSpwhkBu/WxNPL1iEscmXtSXd1zFBNfxBVOhChQXQ4=;
	h=To:Subject:From:Message-Id:Date; b=l74TV1VsPZE9ZkWnddQJQ4LirG7fpxEPSWBlUeTBmkVgDpLiMHnIBIHomhBII2Ct1VDr65MqznDKa/JPg82ctmBZEAFEwbI/qq1/6fLnopSZbtPAjnX2TeKi9uwEQKgbNLeInt2LBkKb9GNue3ojCFMgdGfDnnobJDDyfvb/2lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ni3Wlp9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ni3Wlp9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCB2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746436193;
	bh=HkSpwhkBu/WxNPL1iEscmXtSXd1zFBNfxBVOhChQXQ4=;
	h=To:Subject:From:Date:From;
	b=Ni3Wlp9QJMx2BDgfl6oT+ha6ine+BL6TAt1E7Hgt8q9l68LdA25PKSdbaSGJh1iJ7
	 y141BkcDB3q7kQzS1HTf++Op+ziqjhZvl+5ZPR58JMez6bRyCLi6+FwUwWcKhipBzc
	 HHnobhi/ubfkbIlFSyyuXOBBpQSQSHIh169gch5/OENp0kvtBZX82C6+8na8kH2xlz
	 HE/W7TIx797GUM/r6MWFjH3Q7aHoue9qmrWhGof2MrsZ8n2EF/hX9egGag6d9LgBrS
	 i8RWaJBteBVnIxnAibCMqHca5OKTy9hX/AaR7MGQuR8LFwPoL9ejY/bH9LYos/oT/O
	 7G4dDJoWysaBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EADAC3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643619357.24101.5884741157124202028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd0dd3aed4fc232eec08fa1f72c7f8901e74c9a252b2b48b9425873fba9fea9
Date: Mon, 05 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746436193
