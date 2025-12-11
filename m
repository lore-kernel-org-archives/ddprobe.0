Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F2726FDBD
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765458774; cv=none; b=beZlG34EjQGV3UEc7s2LcBPqV3n9/flOOtLK0Tyd9dqXbsaqRgEIk2vQfI/PMhoXckIaORfqeyPBtKUTHcY5v+lfw5qUORrM28VeDSvmkPiykz8UHxbn5r6R7MHfHpindvvA0bx2Eq8WcAP0Z5y7hfdDDc/TyTot5xFAYki/Zk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765458774; c=relaxed/simple;
	bh=oEIV8ADMlu7CRU6ft7WiM+jHVVZ2984lO48OsvY6SCQ=;
	h=To:Subject:From:Message-Id:Date; b=FeVbUjdcGFs97VSUXkobcfo7jbiAfyfytNJugxNYXWohDBFtsWSQFniMSAEQnok0GDuPWe7In9048oIaa4VczmLJTKlVcvMJPDaSKH8BVGSgquHc1Pvt5oJSgXRXJOuGM0M5Bl41HsmjnhFkYF8tw0EOc8WBgQGF+mN5QifIXhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0qznFGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0qznFGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA716C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765458773;
	bh=oEIV8ADMlu7CRU6ft7WiM+jHVVZ2984lO48OsvY6SCQ=;
	h=To:Subject:From:Date:From;
	b=Q0qznFGamTsULAe5X0OvjODtHtJ4mhOWC/u7s+P3dDa5iESPe90v9vO/9dLXDdzJA
	 e2E1N5LiF/Y+g94nKxNF3hOgtzu3BNi3UyOt0NJFAEajdpm5OYFPochNr/Y71I7wEz
	 NiAU5ioSA7F/wgI2L5QukXfL/+TAnlLxQiAkywYCQuN09BQoe7xAcd/eb7xk0ZbXJI
	 1gqqKO1Gi8mePNJ1YULanr/pbfTH9ABRRM80H/sWlKOgxI7QJiF/tfueyfD2xxUn7E
	 xgbeRl7TA2hlGTEyX4J32rlJ1/3arJmyyghh4sA2vVOPqEfwoK9VFHj288cPKnA/1Y
	 LS2gMn8KzrfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97187D41C35
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545877359.28314.14585660358833840849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c29be0f6f00261e5d6a0a0353c9fb30ec8be49659abf9e346e80ca1070f9cc0
Date: Thu, 11 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765458773
