Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6AA38DF9
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766792634; cv=none; b=Itk1NCBc6pUOLTr+t/VIXGwEa9GSXS69X9pxWWhhTrrfD/6kiye9vbQ3sB8KN9AXmTxvvfDnV/Li6YvUVd2rC2LqQ7wvy1VzS87QqyFN3loW6oUkP8NRUUTB9BttIMuKJenx3kk23jhrJh7E0GRvGD+EZ9J9g9odXggSOgya3FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766792634; c=relaxed/simple;
	bh=pfynOiBotd34DYiJTXVwtyY/kxtN87+GiyN83oYUFHk=;
	h=To:Subject:From:Message-Id:Date; b=PPHBj1lUdwHyX9Aedx7nsyWIcXb/mARv6xnS06Cfp8c+8oPCi0peYfKlM8zyiXXvnY9J4mElIJ8ZOWLpw/hnIM3LLsKu3v003NjBE7N3j5KBOKA+9iPAWDYpBu85ct5TkjdTP+FSAjX0xHMiJhRzYsM3aXfktNoqHsUi50bWvfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEvRk5yY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEvRk5yY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DE9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766792633;
	bh=pfynOiBotd34DYiJTXVwtyY/kxtN87+GiyN83oYUFHk=;
	h=To:Subject:From:Date:From;
	b=MEvRk5yY7ala2nIA0gHk0AYLqY6mrFk8wsK2oa/V5zlMyim6wRbtKoMSBwHbT21jS
	 U5ZtR43QAp/kq801H+22wotRWFucOIMWlWL1AerIhZeYDfGTNx6o2gdf0C8gzkkkry
	 g//EWBZBEV8sXKLarkXEuHVQaYg3PY63BGs9S8Qi74bbSy35kDSF2S51gwtRrQa3pK
	 vhub5h8xtb8N87i7gkb4ZGkuu3BmP3g7JvQPbdUvhxJUAtORF4xhSmwIqPKtsDP7Ey
	 abp0PweSirdjDNG+ACUVwr7JBziGdpSjxjxsWa9jtCioJxxbHESrp5ZU0eX7JfUHd8
	 vW1VKCSvv1Ncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A08E8FDBE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679263358.13731.3642490352046474511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161b5afa403f340b7cf5fd72a7201fd6926941331acd28b49ce313fece4a2aa9
Date: Fri, 26 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766792633
