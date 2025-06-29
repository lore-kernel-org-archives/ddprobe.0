Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274DD23C4FB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751230194; cv=none; b=NQOKoZbdgZV0JqJzq0Wu+3q5GRG7BeMBNt9MWtdv8n839RnF2YGNYvkSVw8bKQI8rurg/qp5LAuY79f/RNB/dv+vNxQ4RqZrkyKaPVBpKi962ZMgyKXursYJahEvRoisosSPi2hTfNb5tVD8dbujdKY1BfsP+tzT2qMpPl5CTWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751230194; c=relaxed/simple;
	bh=PBoQEPOONgZMVTiwsPftjCJkz3isead9paAz+3iKK68=;
	h=To:Subject:From:Message-Id:Date; b=I/9v/VE7Z/ZZaWoev/SNa8eKOZ2H0KCQOM02OVD1D+LDDwWTAhGkbEIiDblj9FK/4r1ueH99ZG1mJvg5KqrpMt0pFjtg+8YYfRYzNGzjYbVy+4+W3z2WHzzvYxCTGMrM+n3+ZzaJzbVeJnE6JmPSn6qvU9lSjJ51ESoV/J3/Q80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkZ4ayz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkZ4ayz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D83AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751230193;
	bh=PBoQEPOONgZMVTiwsPftjCJkz3isead9paAz+3iKK68=;
	h=To:Subject:From:Date:From;
	b=kkZ4ayz26/UQhFafkIKtGNs5UHYFVrLpO+Ec8p7oxERUZzx9B+uIVssEbcFVbcTYg
	 3o3YQ7YQ0qNisV05CQoC5TotXZsWCgpPVBl3CGdin+GttNlOQrn9fasA9OByzsni1h
	 FbnC9q7PHq/eaWFZFTCphhfZoOG2E7oKaMaBPML3FmeXnVRF2yupLSyiW8WOPuXKaw
	 VP5MXK2vTMA6ylt7ILgJcM57F6oauUt2trmrL6i8MKs9KZo9oDG1sxcWp7c27vcVxU
	 StcfGNCY8rAvQO5WRqD9+M1RiGyWJ0qa+K520GW62xlGDnxNgcqm1CnX9PXy9BkP9r
	 2se3M9okDSRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F803C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123019358.28213.2834350925173272415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da81601dafce3293ec42beb0bdeab3df33bd5764c4513d8f9edc001dbaea94bc
Date: Sun, 29 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751230193
