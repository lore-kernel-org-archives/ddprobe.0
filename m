Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525CB6BFB1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714149743; cv=none; b=BfY+DqP63ys4dxaXTAo6QulNowfacF2bbNhE6qU3TIR87wh37sKFuntpdNE3ZxPb/F5IZ0Lbdl8gfad6GT45YeFW0enaF+dZNFGO+LRboheYo7eP4GU6lOA9xf+A6iLM7q9SUbZEi3/0yKetfvADEC7gaq5SvspZEhaKIxupi4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714149743; c=relaxed/simple;
	bh=1VIxtW5ZieoFGp0ATicdcSQSfyWbwSEmSNRYjezo1Yo=;
	h=To:Subject:From:Message-Id:Date; b=M70GkIqutwI6zM3dxsv6MxdY6hHtMSBS1VF1pSvFC7s5TcSp9A39tGxTt/RMhwCTfigBE1/cOBTioeHZK/0MZFLAZc5BiP2TaAitaFQWOWFPuog561THcFcJlCxgp03G59cMtJIwHkHfVnbT0adHiloh2+sQJWghon59aBUTfXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JImJRB9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JImJRB9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3D0C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714149742;
	bh=1VIxtW5ZieoFGp0ATicdcSQSfyWbwSEmSNRYjezo1Yo=;
	h=To:Subject:From:Date:From;
	b=JImJRB9VBNh64nLwscUqFNR2qohTHyNTfUGHXOLKEk90m/d1pfgAgeissF7tcE7OS
	 vXgDEI0vlXBkOl7EdFDMIW6M5huJbKt9VPD5dF1EtnT+6UREDJS5m2zJCY74HeHyrn
	 csUqV3PCbXFwxwMK35DgMMTFXyd7gS9RPqAPw+oAYY/9xefcVN39veLAqyywkGZsL0
	 OS87UlLII8lnOD2TVLIVQV24l8Yq3c1ktdVfCQ1X8r5PstZ10OpzNDClQJgDAiLt19
	 IR1SHzcNkSLzFjxLmtAGBbRCUQIR2pEqlEujxxpzMuzPWLUrmXIpp6k6i1voGBTnWm
	 wzKwQvgDMnHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE840C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414974277.17152.5504310191331356377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d453e3298878aea9549059116624ad2b83da954d3ae695d8cd1c792b5846aa6
Date: Fri, 26 Apr 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714149742
