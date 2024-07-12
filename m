Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69D413A86D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720763843; cv=none; b=arqqf9Q9nFEtcJHs9zF5ygCed2sgPr1r0qw9Hn7NTrARDKkO6HATt0KhS03PdooJbNpJStWtBusC+hpCSmTAo12UYGplmLS8Gtf2OCJYgWtARAAjVaZukkqqzvvww6xYXnjXCbbWVEkJxyFA5Ddox23vCWiP9zOz1LVrNT7sVp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720763843; c=relaxed/simple;
	bh=zLojQOiIIAi3NQX6z2sj5AhxNn7gYmcaszGES+EQJZw=;
	h=To:Subject:From:Message-Id:Date; b=REtKoUo5ChB1lZqoJ7ZpHmEootJGzaONxG8q9X6QXY9rAJUbP55WjxqXke6CVtMsIunXJFtXRAXSF1bKdUokqgpnuhSJ04MIGawn6eOF21+QWw7P6ydJZ2jD2XkOlQPLBeS/p+2fGYLDpeGBfGrAfbBvkFfvt5BJTswySoFjgkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ+gWEIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ+gWEIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C73FC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720763843;
	bh=zLojQOiIIAi3NQX6z2sj5AhxNn7gYmcaszGES+EQJZw=;
	h=To:Subject:From:Date:From;
	b=cZ+gWEIKtDRNxdptrxeuY586YeqAiKFP9c8z+wvaH5eUycxBPB4JdFejuXgEURS7D
	 8LdWVOoUj+UqnHsI4maGAADwVHkE23kCrZx+F3gem9xXzhdozpEhu5Q/hRM9XrvQ0P
	 +FV60cn27sv3D2+Xz2RPm7hMEG/6vO6r7AEsBilr0KD1kPp84B56LemaZA8LeTU97z
	 34EoSbtrF5mXF/jik+MssqFz/nPndublEhwcyh3ir+Mi1xSWNS8cJWyUqqFFOurKwL
	 dvWLH+V9H9KWLRqUVo22umfyqKnmZrI0eJOj+vbbgqthJplww3TU4PEn/cx75IRq5A
	 k4ocdtbK/JneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAAFBC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076384292.23771.15843705588368147077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ffee745d210182656301517acb5d322e0dabbe1c5c18707f18bf4a39266059
Date: Fri, 12 Jul 2024 05:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720763842
