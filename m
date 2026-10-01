Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA98B5013AD
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790865635; cv=none; b=dkZW741AEwS8hZNdlumXSJaTRs8X47Ux7Qe6ulx/9nSdcvQvek6sxo4CJXE8OjgdY5vmy9ZfT5wvO2IbdxnObdLFpa/rI5Y7gI5fnHrE4SUtVJtQQ3YnNOM7AD2648lcNIO+Ko3kI4iuimnvOsk+miejeDxFqW9IXBgkUHLjAm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790865635; c=relaxed/simple;
	bh=YD9Q/4XoS7lF1ImMjL90PMamNAXVNZPoZdbC/DnI2kQ=;
	h=To:Subject:From:Message-Id:Date; b=V+2afdD01ADIhu24bD//QKsFYfx5apRvEQPAeFqbewSVQuuUpvC08CevN7WIHwLJGQbPdDUd/lr/I6xk3T0DN3f+izyVdiMmoMv4/Y4MRl1t1VD9BypKJghTEPO+YFBiGrvy0SyOT6UIdKscoz47dn5tanK0yjmO19XFDP4Y0LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8dNM4GQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8dNM4GQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFADC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790865633;
	bh=YD9Q/4XoS7lF1ImMjL90PMamNAXVNZPoZdbC/DnI2kQ=;
	h=To:Subject:From:Date:From;
	b=l8dNM4GQiSs3VrmSKaeG1/M/+2CyxWhfu4TdeHSDF+81lONaYynGiCf6aVlxLUip2
	 A6I++c5+4ldqf9sNrUI8D+U8bm0Cnp/FI7ZuK++lJ6RCdxfZT5ca7Z3ibCtc3RJV+a
	 MgoOikXwYZcaZnLEA22RLmZGCOnuJ25F9muQqqOPCC4a4+y1WLvCOpGoGE40Y2P3EP
	 ekgAdUu4F/SOP7nVrD90MHirzEjF29cUHXUM/w7izXzyfZo39WlXucYzaecINQ1c6b
	 199x4kQ43W/0aBB4eS57ljiXLJnT17tfo2iqX0Gqp68G2hZhcU9RtH9ZEyY4x40OoD
	 Xlaub8A3z54Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7749CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086563374.16160.14410419995930833338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e89bae3bea876c92d9178572969028a608e030036560cebb67546bad5ae4e32
Date: Thu, 01 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790865633
