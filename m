Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BAB27467A
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751377194; cv=none; b=ozbNsfgjmaEInTh35sA2XpwpfLAye6mjvzLIkU6RsfnsVB50VvXqijmbzvWEA6Uk0ulJBoNB1zuQSoAtNY7x2OgZqFYvKCeXZWQOypZo521AAx5LHmSkSaS4n+FcMVB5Rk4BG+ncnxNhYYOu/EO5nVuJoZazHiHwU2MIN6bwSCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751377194; c=relaxed/simple;
	bh=MDcLMyx4dG0YnOLPy0smcXo1QQC3DkAEvrz2w0PjWu8=;
	h=To:Subject:From:Message-Id:Date; b=r1c6lulbEAaYXFNQf/c/cZCT+bLAXhM2XOEC9k2pHTcJjwjmHmzzjxQOL0SLrin/+ia4wXOIjQbIz0XA1hUJv9uZA4wzXH7ixj5/dCu3XzlSUd+25T/y93FoSu8XktEkSzdIAsjzbA0szDVLHxrDFh9eWCMHTgBakdCTF+6E0uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnjOsB5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnjOsB5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 977F0C4CEF2
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751377193;
	bh=MDcLMyx4dG0YnOLPy0smcXo1QQC3DkAEvrz2w0PjWu8=;
	h=To:Subject:From:Date:From;
	b=bnjOsB5Ph4+ktG1LSwpfYupl0h5VdgxyxoYAzJsNiOsrTq3GIaRBH9WJsQpbSEbc+
	 Y+WdYAOx3ywf7kTwL/JdlQFZWGD3DaHeSb22y5aoqfvXaDCNwQuxKAh+B7CES+8gqc
	 rK+0MnYZ3KCt+E3FHwhbOpc7gB8lv3NpZaP5g8fgxaq9HGvDODFDuUTg1uMm0Nmc6V
	 2Kqb12Y3NfQa9IyuqSG9XP82187c+qpAyyCgQMfqd3Fe/hpP90hZb6QDyHomDrZ+PA
	 oboFFDA3eFQcxPVtDlyXj3jQJ9WHBmYbmor+CT70Bt/NvUzQBYrWv3GXSrhGK5LuIH
	 CWNTIizAf/BMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26FC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137719357.7573.3529023287701676856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d9728f58585c019bbcfe357bc177ca208139ea3f80a2c4f8619933cba521ac
Date: Tue, 01 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751377193
