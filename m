Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8821A2C3A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750040993; cv=none; b=b+PsOnWRzVdGr/EGE6WewJqNC1rgxqSF3MYWnyC4s/JlhqWExLbcqRu92DjDWLcWNs1Wo+74mEOCLSKkNIc5YCnpkzNYYaFnP7rmKHCILrA0yjTlsYwVXSWs44JUqUbYuoAUTDNY4kfdzZ6qCJ6fUCURv1qvv0LO4eiOgz9RRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750040993; c=relaxed/simple;
	bh=Cu3e1Kjn+9mgScfmWP1QJSnfT5RXil+hqBv3b0A5YQc=;
	h=To:Subject:From:Message-Id:Date; b=mcgi2OPsEbIk6BdKPXALjC8vI0kuvl0421Yg6X3ZoyBdwJ4eu421CSz0zPfBehJ6wvmziUjWuCIlkc+0j11/dDpKzQKaceN1Jm51q95bGdW0ew7svxMnkdvtlZ0tm30bcUVa3KmJRa6QBdm0r+XrrJVZjxGrr1Hk9NhGwpvZDro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uumJUDW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uumJUDW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12AEC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750040993;
	bh=Cu3e1Kjn+9mgScfmWP1QJSnfT5RXil+hqBv3b0A5YQc=;
	h=To:Subject:From:Date:From;
	b=uumJUDW/o9ZYzQiubj5AhBzCoM5pRODxuNr70yrSM2c7PiEfQ/R8KGS0vDqM/0A11
	 cYa1slvd2hXx334rTzxS7dc3CD/bJD/q6Zm5xB1ZDF/acOlcC4+QD3XffjhfGU4nUa
	 zh1CCsy0kXRqYHq8Mxl+ZRCwpc6rKW16Iyid6J7hQXrWZDv0qT9CQ74Bc4jrQavxEi
	 lA0gUgV5AsyCWNY3YqjCwVt8tC46FiQzrctS3HSqMe3ZwsTp8jiHWUOUSuPPaVZZ/C
	 EGpc+2NyPL/ntcle5ZZX5K9kdtjR8R88nokcAFBgqTrEGwdeBLfv8ya850bYbc1PDS
	 tZvRlIMREgB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F268C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004099357.2748.11808767927456243181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7a46fef80b08bd7b17a4dd28a71caaa974415debc9d97aeff0abc5ea793bd2
Date: Mon, 16 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750040993
