Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5491534D93C
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791051034; cv=none; b=eCdvRjr0e1hXu2c0Dv72wIU3rHvDjaDZz78uZziuuqeHlBma7EOTVXwR9qTRI6lLLaY/PKMuERImrUXj/WrN8dNEoTKVguuNTRI6GIRdWc6ZlKvKBa9XEPisOBlmM7VuYKLHZVRji1D3QdSwomyLPLFNMkOZn7xsl28yLqNLYPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791051034; c=relaxed/simple;
	bh=qDNqEgEbFq5zCE+DRhvCgKRGDWTxvX1NJUHEkjH30Wc=;
	h=To:Subject:From:Message-Id:Date; b=VQP5RiHk3Dv5UhOxqW0pQ0NKbfYvFijO42M89vYxnX2N7Gpj9H2ieA1mG5hN/NpHktN726bx1NRe0nnIX1wd/xxBq9REh3Xox9UwCK6jSs6xskak6Hvha75V1CwrE0rDwYXiV77D3QRmEmX+DZzcV2Q5u3wK0fwKYggtPaF8xFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcyWSWvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcyWSWvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D696BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791051033;
	bh=qDNqEgEbFq5zCE+DRhvCgKRGDWTxvX1NJUHEkjH30Wc=;
	h=To:Subject:From:Date:From;
	b=AcyWSWvVrFJL91LqAGZNgbVt7jaM9PKm5T/Xvd1gJa6s0vx3EPRRC8A8oCTkJpkVs
	 4AfqQc2L/dEBrvRvOXe6jpAD7v1qDT5YYonrE/SDJ2sNbL2tIvpSfIO2epj8UigPRL
	 eDIIUC8tRwl7FukFUFnav6OnK2nQZGb0tyIogW4hIo0fWO2v5IUGQ7paD3x/BHMjMF
	 eWyAzO5xU1kH4xW1s5BkOHoNF+tPo7OE1lOk/quM0I3aDPCiZiBiHJCBUp+C+Rzwa5
	 4PwdPdZOlOQdu42A0LtRfHGu/yQNjiAbD4QnF2+EL6/YbDdoA70VRYqznM1VxGNtBE
	 IAcdU3QIBi6pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CB4CA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105103368.15252.11131779860808081448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2478478ceef7eaa5789739e34e2921f5166ee2c026f79e99177566cbe9e54b55
Date: Sat, 03 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791051033
