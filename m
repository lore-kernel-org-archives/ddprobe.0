Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E07814F70
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752956994; cv=none; b=Tv6w6tkPD7eM5PDdd3c317Ve5kZ0iAvdVrAkHPkquDbSndAmQh50/lt3j7bOvMZxPQMp08DTJ/EjzpK8scwGAOCiCj5yprTB8XtVKg1SNBdkkgQ6/HJkvnMCZPtpcLfEUTKaSHDvA4O0XS03UyGxan6HLGtiw0JoesHzlnA8mo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752956994; c=relaxed/simple;
	bh=3kxP9p4Dx1VExIvZqVBlnwNjxH4d6h2n47dCJExfdKA=;
	h=To:Subject:From:Message-Id:Date; b=hEaoSlv9zwmwn52CNtr1AA3OgwZdteDlTCePJTdMuEC8bNcvrvm3QtFGCL6fl0P8cY1anioH9TObj+Lz5aU9oEgDxmBIQZsewdN/OmzD0HWs6T/knOENj2CVYKhUmGBdtVl9aa6xuG3lrQ+OE6esz+TQXcsfOUyyp90E1yglTDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEOTV7tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEOTV7tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7885C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752956993;
	bh=3kxP9p4Dx1VExIvZqVBlnwNjxH4d6h2n47dCJExfdKA=;
	h=To:Subject:From:Date:From;
	b=IEOTV7tuo0DiNic0kakI2jQIFFARS4GUZnDZu3ZC+6ivDak+dMNx4GUzL2Hgvw4O+
	 ZX6mlnIVvbnERk53KVB6aRKe+k/rueWCuzYZbE7Rb7Eza8Ja2o4FwOC33EJC6o6drW
	 qRCIT/bhhx7T/C6wFVI6qAquAmwPnjaxmpwC/KtNVEoDyll4k2r07MrbVK7ah5qBiu
	 1hJc8h5nPZt+JBArycIUUQ1XjPsKhMsdnVk1wftnXJhOylzibmE9SMAVhTmoSnbuX6
	 qvrDPCx9TIdnqKrXBZzoqojZGw+5zZ20/9N9v5YVg8XxbJEimKXUpelLTUombNF5z/
	 AbvWUGD12qZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9548DC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295699358.23962.6130877881817004148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d7e3c2a2ef5905afb2e6fbc554385020821afbd3bc3991a1631ae1630740bc
Date: Sat, 19 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752956993
