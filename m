Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A97353EC0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781528794; cv=none; b=TujaIpi5JhEbtbAFurO7rh3Be1c1cYa/OVLDbRnENPdbErTZgHACkGRSg4O47d4GY0S+NMI2Fgk7yaj5dO70wgtkR1q5LTTUC6lq/d+AGOqwhI8Ef3v9YrXCav+4gVnzNbJ4dFZhGklrLokN2FxhJ/nf/w8piPVG7wp8zwjbYjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781528794; c=relaxed/simple;
	bh=WB2BZWi8sp4hh0y8UfXsibmRWuY6KshR5SItUhSqZDI=;
	h=To:Subject:From:Message-Id:Date; b=GUPDeHMsnjqXKsOl1Tmjp/oaBywSyHufaIkZFplsokFVWx3+CO+YLtf2gCvCqdA7/8tngZB5p7wiWNE2uJdRjeVvHBSFHaBRMXMGiqNYw7bocqSAhBs54SfwJRPYfY8Ffv2jppY/uMIiDRW9Eeo7e3wMg0iESOwTLIlKw/f1auY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7+vanG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7+vanG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7B8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781528793;
	bh=WB2BZWi8sp4hh0y8UfXsibmRWuY6KshR5SItUhSqZDI=;
	h=To:Subject:From:Date:From;
	b=c7+vanG0bvsAQXxsZFu1eP12xTIVR4Xm5C546jxsDj3OM0gpHCFavhlw0DP3YExa7
	 Y6Je/gemTWyZKGdVGnLtPfbL5i9yr/I1RH4lpl0Kovjb5wrfl0IrCzRPjNgJI8KmHd
	 E6oKfj2N92PvYs65Y6qYNcOAEPog0aZloQah3esxyrJSewCjl9Wo9RVhgz3WYk/Qt+
	 eU7IFjhzJcBYfkJFFYtiajrFZFqvtasn25qi75VoOU4slESlYduF/0posrriVGE6H1
	 EZTGGeGTDy/WQGLlKd6rh9myvX5Ng4dxlzEIwldf/WEx5GgmWrQsC6UqjYryJqOkHH
	 eMgbuVWOC7duw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED0ECD98E2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152879370.26759.8085216120459779107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc2d7d3cc63ef8bc4a18a659f857abb6ef1da4d26c75d545ada4ccb505c5fe2
Date: Mon, 15 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781528793
