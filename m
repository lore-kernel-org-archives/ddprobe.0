Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079E4296BCB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764906774; cv=none; b=aiuzF+APPDFiO19VKVqI0yGvoT+4WNJV0ohpu2eLlnwugfc7xTQ4P3wARwI/Pb+5k+MUIgHrp1UJbee+dsqdPrp7fgXRP8HAo4LK68UZrHOyGEuU7wkiAJx2x8IegBvYxxQZ4fTLX4HMtYBPGwxHvo0RGwhcKQkt2gj7tI7ZvGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764906774; c=relaxed/simple;
	bh=6EIZ7rg2zr65NJ05ex35KXtOCjCnW36/rNtKYGP85GU=;
	h=To:Subject:From:Message-Id:Date; b=kRq0NnhmHGGZn7pbiMtJ/kZFXxcMcLiCUuja+vl0gWDWtTcpadKlu56vzXVxnWqGWZA3rC8szJGz+83fVL5CRm6OyQW/N1LBYb1XerrbQckxBj+bHOf7Dfwl7lEbjSO2+cLBOTBlQqQyvX5w0CobD6pbnmLlKOYgjd3vjAYJfcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy31pFT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy31pFT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A019EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764906773;
	bh=6EIZ7rg2zr65NJ05ex35KXtOCjCnW36/rNtKYGP85GU=;
	h=To:Subject:From:Date:From;
	b=Wy31pFT4bHh7PpvISKzsuyU+x7qjnInbB+vdVPswD2sfvkyAcw5fHjoZ9g5s+ukHH
	 vSMXwVAK6k88B7HQo84Pj7Zcxjq1VjeCqLtunrpVkY9CHlFRteXi3y6vhpSXekvQfL
	 wubxlepiDacYahYY+3nRzThDbEc16vq9lSZYD/2YttwuAjUrM5cy8xoAct+9zoC1Mh
	 FR0j7NEx2EQ9WErjgaKNLM2gfnXEwVTKDj259WYiHEmb2a4f4YdJPAVnnsypQMZmQs
	 Q6bef0aWzhVWYE8LVbCPlmZZXl3JDSfysIAYEXoo36meYeQbKODZQDPW6lBNDANEXq
	 Rjabx+MwCDPjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A4D116F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490677358.30078.15824779889435956942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34d98c1f64ecddff4e5678e5499516a7de3353f75eafa8043bc899d003a2b99
Date: Fri, 05 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764906773
