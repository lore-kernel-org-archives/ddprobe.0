Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9ED40DFBB
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776542254; cv=none; b=U72hGqtpRV+7oV8RLB3TAEOPVgTmJT85RMDBPyYFKXQEDZn6YQaivJmvokNlvsBPbnC3JGYP2H85IywUYFEPqB99s9Lio3xxevdaxRSdiRbzaGhleIuBCEi751qKAIyHfUUNYN6vXqTDqxKei8g6lHf6Qvemmw/aQ2GXoAe9A3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776542254; c=relaxed/simple;
	bh=+ykFuGbM6I+K4kxwxtRlDaz9pr7K4M2ngFTKAf+NjsI=;
	h=To:Subject:From:Message-Id:Date; b=PaHi41z3dzyFgAQn0/BHcxwu++CwRP7q2hm50pumiZ1/m8/Yd/rsq2UN3Sqa0ih660hPeHBFUc6pKEM3BWvJJ29L7QDtggk0juPULoYKK1DUTG1/fTw/LR286D+8KTGhgpH1nVr5jUR+S8wUWRxYNfj/XE5soayQhodzwMosRig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMBYsMEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMBYsMEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2158C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776542253;
	bh=+ykFuGbM6I+K4kxwxtRlDaz9pr7K4M2ngFTKAf+NjsI=;
	h=To:Subject:From:Date:From;
	b=ZMBYsMEgJfjlb+ip9eKXXSScINAgDOHY6wyYjzbni8DW8A2KKgiP2tDUfjgbyKb7h
	 w8POvzLTt8GbPOfeWLfDUKowNFFA5QmU5qVEtOlEQ2hQ7sFfEufS+9tn49yKLsctjl
	 Ce3H7ckoD7umz8K21AlW/RPrAtgRCV52Bdn7NSgsPY8dsoUrT+kic7V+g/I3J2bpK9
	 mczTzMKCitB9HN5zMm8o5pwzI7OPmEAr7AIK8SRzeAOgN6SKUr8bgtRseVVdRzT/jc
	 Hopkt6ruI9+z+4dj4WX+nqbkGLnPTz7L+s14WraK8tARfH9QujSsBxFZfXtbpE1SuU
	 C6j6n7DFlOBOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA89F99C8E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654225368.8515.10274963553540570520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8497935e50e012cbc50084f790f896653f2c11bdab97bdbef153f870736232ce
Date: Sat, 18 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776542253
