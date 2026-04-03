Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B38B3CBE98
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775233534; cv=none; b=rW/4Z7EB1v6LTaEwt8MY10CbYb+h1Jfay+dF/u5hxAfzSy/HocWhq03obdLz3Up8UqGKdTUYdT6ECg1CkE6yH4dBdl7l+4x9frPomJ4sZID+/2A/1Flzf73BH0SRU+v2RPHZHBHcdpkQbAbLkN/fBqDyh7eMGUDzEISc4B41wTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775233534; c=relaxed/simple;
	bh=9zkBpqYn/q0DLzFN5Q00G3ctiWRMRLbBZyhXsZVmCj8=;
	h=To:Subject:From:Message-Id:Date; b=FbsdRBbl0BGT0g0/MwBY4Y3+7y9yKenQy8jE5EQKfXjMje31KMKzUNs/tTpX3tGA0WYaUlaSSh0jBWcKN7b9hRX7/3R27EJHUkZS9EsjsQ4Av7sSQJqpVEzH+odho/uYxSjGazsLPyZPzrcSzXSTR7xBXDhQMocxxQ7GhJthMYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWHSqxI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWHSqxI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC069C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775233533;
	bh=9zkBpqYn/q0DLzFN5Q00G3ctiWRMRLbBZyhXsZVmCj8=;
	h=To:Subject:From:Date:From;
	b=VWHSqxI0OTlTuUTG0YK5clUp0YLljXnYraAJcx5HR2ox2p00GepNsqHNwiYeVkTGr
	 pORG8CLQJd8jAMzFhApOF/TufmHx+x4Q1M/6vuemOf+q34oXJ8SVy182qSgfrim1CU
	 JEmo7k47bqnA/uOiiD5z2nN58azL1HLb0HmcN4Tmr9WaUWA92eIASisZDta929qhOo
	 F89T4lMU+8Kt8w2IzdcHkFjWBIL3ysZ8+9bBM8o3vaFhK5paXThEVktwtFz9/QUzz6
	 ggp8E0ejHXhgbhz/Jijr/T8axshZ8JxgDBYW9DD6ez55B/Apj/ywQjvG1WYXFTEv1n
	 KEVscdpUIxW7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9592E85371
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523353368.18809.18232178677485576667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040fca93c70f3c20d7fcdc4c64381f02a619cd235a8b102f7e705c6f47baf06f
Date: Fri, 03 Apr 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775233533
