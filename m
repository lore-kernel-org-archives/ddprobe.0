Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A64726E70E
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756658395; cv=none; b=lgX6TdRa8vAqUQboLoQkZLxK9rPxRkOsfVW0vya4QK36mE/IytTpqkclte791/eCr/z3d6/+yb3gmp+J78OWWRtlq2Z/Cfy9R+LtlstnMSsX2uSkfSIvlUt5/APUDsJJw6Pt1ywmYu3/UDzAcyz3HGoLdVUeRWOdy4oB59UgLtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756658395; c=relaxed/simple;
	bh=Jw4fGOgZ7cxkCgxSp/QKVIckW9k8cKXnBh/2oukId8w=;
	h=To:Subject:From:Message-Id:Date; b=lty6e4gkvL8S3mc6mkIVVHQqEYXgWl7NuH/mJkEM/ZT/GwBd6M8NM3YW0BUJ3FhGl94Rn/a3kVCGxVhAn3+NL/TloTaRrtwvZ5lHdjyt/xBNizGNVRUTgS4ZXXpSKfrstD3jtCqfybEyCeB6nXdNteo0CppyeDCTKJiZQru3N1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3Npbbj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3Npbbj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118AC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756658393;
	bh=Jw4fGOgZ7cxkCgxSp/QKVIckW9k8cKXnBh/2oukId8w=;
	h=To:Subject:From:Date:From;
	b=W3Npbbj7EsOVsYcOVQryoElUg+MhME8X9aFSkcjJbJiYwbsXLQQ9KOheSCpyZ+WLK
	 BiTu+0SCPre/BLXyVN7ifN5Yn+qQ91GvX+PLULEFGRssqqBp3N4FkmzwcXuv2nkG9I
	 kXUl8PXBJXu8ywvNzVCufZEgE7srkPzg4PeopfyZi9scc4D8A1DtZz+8EIaykPKVTU
	 q++FDlzMG4GnLcGFAeBCKujIok6f3ezaET5TH0Ce1tY4X3glrZi0gRr5ABso7woKKQ
	 PSguXS//mGRpBs3bsM+WLkdPY5LZTUcdREwtEZsxjuQQ+8qJ8gUPeCoWIWEH6otyD+
	 L3lEt1Js9cNXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F9CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665839357.8925.13694405748558083870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8376e6a70203468ebe8de4c3b0ee83ed58ab7e709c0355ea6fee5371d42543f6
Date: Sun, 31 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756658393
