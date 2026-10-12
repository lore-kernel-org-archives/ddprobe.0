Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEF03F787F
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791802834; cv=none; b=kbR+AJVd4vq//uHb/cOldY9SQAF/LaxrlE7AguLGcRdZJBPUCA14e7/fUD9mt66lfm14cLpU+p9WLrLQuTlf4y3XM7FBwVD1k+dPtXpl52vlZzbuYk/KQ3Dwa7gSqwENtuiQVK4gIgCv2DVUy8uZOZHE37stcw59Al6lpllNoKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791802834; c=relaxed/simple;
	bh=Ji+wzltZ4KIfRNoSgVzm/kzVZObQeqXR65gitXMl92A=;
	h=To:Subject:From:Message-Id:Date; b=PMJ/L/W3arwfQsPpulwThYNM9mrCwGrMnEqmi/Kkpt6jyJEeqkrBql20VgSFb4/SAROViytQlmHILexwRSShKlLIY9riSB9IvH7vQaTZhtAMOT20jeqBF2RZmku+Nisfg6Ze3oKmnr21AN08KXCsCBuzJUQQ913DALKZwuF+Dmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8Y76oPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8Y76oPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD379C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791802833;
	bh=Ji+wzltZ4KIfRNoSgVzm/kzVZObQeqXR65gitXMl92A=;
	h=To:Subject:From:Date:From;
	b=c8Y76oPoRQnPQDlErbmvD3RclD7ScEMFt6QbGwwbzcvUn58LDf/kmZKKgK9x+Q97f
	 DoKiw0QV3iMvdMNREHxXOGjf4VKM7SYiYtjcvceuxV/QnMumbUjHlqk+LNejijKgAe
	 xhOUaT6J9jwQivxfduIdd7i6if8v1XHm+/n7K8BZv9F/j7llRGSaCsF9d+nAw185MW
	 Oz/xINIsOdAokuc0xy9wBnDPPuQMUx8snYeUrubxv5PDKPXWv5nm67ES0GbF3+oeWt
	 xoo4soH1TWRXotbj/zoZE6LAt94Ascai+ehByz0ht8vGS4CiOPy68dGRUq1MO4ESBn
	 Ou8Alegg4mYMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B67CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180283368.27540.4589923047158704592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64099aacd3a102504deda847b027aef197942c510e7cbc8b6743825bbc962c5
Date: Mon, 12 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791802833
