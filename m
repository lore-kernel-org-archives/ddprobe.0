Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3134C20D516
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744328394; cv=none; b=IdlDrr87S5Y0P4VXJUWdSm8izeafSCUXQV8WpmzAgFjdR/q8xtNgBCyg67UI2ZeZMpt7BIpELQ7H/wrtYAMTyl9By49W+PkokslZiKie3CtD6WwCJeB9u3RpTeDyc2vcDyAgvRAF/KkpvozfmVMJ83N70cdGTYaiI9csPb02NJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744328394; c=relaxed/simple;
	bh=Ix5LZoKM9rg3kr4wHAHg3C3jif7zrPTzYYKh/RbwBmo=;
	h=To:Subject:From:Message-Id:Date; b=NWoWyCVoRRYpqd4/4wYxFSF+waJaB6JpNtm1ZmWTabf+3c9qZxG00rm+9XYsb4hwVx6F6ylYfI6a9zADob9uNIwUZL9CJUR2dDlIqIhx7oJDBBjCNo06Pt8DzDhswsF3CT1pGNfpmLrcup+vDSgxKomPZFez3ZfxnleTDLrTSzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYMZlC4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYMZlC4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1176C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744328393;
	bh=Ix5LZoKM9rg3kr4wHAHg3C3jif7zrPTzYYKh/RbwBmo=;
	h=To:Subject:From:Date:From;
	b=bYMZlC4jRdylSI8tYkN1fbo4qB6dzLAViOuvtP/+B7JVsRK7UU8ZH1s/wFSh6+AW3
	 suhQMDzIJXLF3AV7iJKEtGzmtP6CWMNiqpOD02ve0QRBAM5iy6vI5h5Df0CZYby9ig
	 wokMNmFB9vwhkCX6IBLk76AfGajfzS14dgrDOALR5xhiKaxpADmFX0N74avj9ib9gE
	 kxevuBN4aJRyBmz2/EE1WTEYDavVAhEK2l3gnN0Bur8SDwZMyEfzvpScku1euC9AEC
	 kdOHX684RTXDE8e3Ll8TzjYNBFy1b4Ix+yL3eT5vK1C2paojXhMb3gUQkjTXuTtnCE
	 Qu50vOqLKONJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90051C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432839358.21216.11814529759554651560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4d3572edf956d01c001618c11fd0ce0aaeac7845f9f25c4a6bf5e0b03efb3e
Date: Thu, 10 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744328393
