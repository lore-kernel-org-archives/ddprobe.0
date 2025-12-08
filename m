Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E821A3178
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765156374; cv=none; b=nioXszgxGqOt/siiXXkJzSu5JxrKB3mv4vVntz8L+Ws44jOoIYjasoHa5oi3Hi5+F19tFc+lDmKEorMfjxf6GEZTg4dSB3wy69Re0sUmbiEZSgZQZ2ie2Bte8JEoHmmODlwy19FPeIA4tFUeKF1bAgXp3IPT2nrvQf6EvAuHbtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765156374; c=relaxed/simple;
	bh=XIBsuvHKEJQKwC6pmUcdvFK48/7P74cZ2oZmY2+aP7o=;
	h=To:Subject:From:Message-Id:Date; b=eYR4HhwDLw0bol2DJWUCSVM8hZJ6RvnFL1fSVYZBfVkl+QNfOcxo0Iv5cq1MAJ1C4pXuvwdOsco7aqw7W2+zM36hpxvTNavhVBpG9/Clq82GL4m7109pM48DjcDyT1S+v8mwWuKhwVOz28Sklmtvwb4eK35wkMCwgFLENxiFay8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZD6Msz20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZD6Msz20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB3C19421
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765156373;
	bh=XIBsuvHKEJQKwC6pmUcdvFK48/7P74cZ2oZmY2+aP7o=;
	h=To:Subject:From:Date:From;
	b=ZD6Msz20gSDVpFaPmqSCs9G38Xc9AnywlpVsfFhY4sAgcJ5xf8LUSgIALbbfLlixY
	 GkStKhy9Lo7Oq+ngCGS51rMtji5zkgWq+y/zojAHyfoEtDzh+3qGJwLzUcfmpC7oD/
	 d8Djnbco+hVy+JorYVO9R0YywVRJ/A+a3a1ENeqL7yLZ6T6/rLzanuqDNzezwwuGk+
	 anwWPP+e9iKhO5j2QkuxZWRzj0NskBxHg6g8Vkk7j9Ih02lw+OLfuDKPloXf8kabZ4
	 1Tje0UHHiO0Jg4xt1yqIPP4ueuSE08G8Q+aG6/cbH3tYLvu/Dc6ohw/YwZxMhPZcjj
	 c/X3L227AD47A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECDD1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515637358.11081.12627044034515078470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da880fbba63a87674ef85a61048544e534494cb99ef1caedb250916af404eb7
Date: Mon, 08 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765156373
