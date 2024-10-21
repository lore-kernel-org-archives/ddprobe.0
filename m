Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41932171CD
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729479954; cv=none; b=JOmBUyv9CX/V6NArQhJyrRjDadC8ipDOwJ521TfBNibY7inyEqzjBBPONPIMascXJ8fDXSrnM6DZ/EaAQ/YTYJKPNG64/0Gwvj7z/YXoqOzocxNI0AS5clylvFi8y903pwnkHZJQgzTdxonjBAtbijXwt18OfveDREBfjA6Yw/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729479954; c=relaxed/simple;
	bh=xc3cTaZQ89fvsOZIs8nESgpJnZljnX3dEDfuDZ3+1E4=;
	h=To:Subject:From:Message-Id:Date; b=sxWIfpF/SWoLI0lFSVOuvDUiC1kp5SfuBTmkcJa1F0/xi0uaeQCq4btAiB1KHu7LMEBWlN4xyeJXE0dWScsvzprsexRCv+71rjzsGCTMJ2HkWNPK1mUigYqAsrHU9S8VR0+eWya4Lm3+GdRV/DsMqXzsx48iBHqH1iX/DLG3YIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqIWywNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqIWywNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A971EC4CEE8
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729479953;
	bh=xc3cTaZQ89fvsOZIs8nESgpJnZljnX3dEDfuDZ3+1E4=;
	h=To:Subject:From:Date:From;
	b=eqIWywNb32MK9ygo6kidvu2vA4TEJ+/c1IWbkIve0L8dFj0YsGy6LPZ+c2C0RfLWJ
	 vIzRYA4zeq+DdoHGKbcHG50s7CLAhrA2HH5AtE2UA/pisJp630lvSDrflVw9qFlM+X
	 Lo9aGmtwfKt3wklL/EgEPPFUNaEB5SkSasoxGilVUv94m+IbI/NQfhMZE2WPwS3I7O
	 PMnAI5wwPFbiI23bAFGEKFKiQJGQoNdw7gRXGyEdUC4I3If9uJubN/j6bIr/D/eKjN
	 S2NW7TOfMOAOBfxPAmd9wghlM/cEJmLdkSz8pEysLprpra3mce3hAYPZ1dwydJ8epz
	 qe3pY1NEgLlMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145AD3C938
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172947995358.16319.3564958325137228683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb2a581cde4e419efd9b3ed3082453676e66306c1a6af833d17397850a7fae8
Date: Mon, 21 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729479953
