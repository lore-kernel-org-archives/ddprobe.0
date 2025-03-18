Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5169F383A2
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742317195; cv=none; b=uP7mtP0oi9OBDTryfsLo/vSMQZojKzPIqX1w0sz0cqcQMnFebqge1JEdkTtSgL9oS8D/fL8UpbS8mAJFCTzOeIkZ4ayMHkb+3J2XB6xji8MPYGlx4IxWSANOuqgGUYneSJpZ2lUO6dGRlMlPGY3elMgZYJNy7iohUcHD0uNf+Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742317195; c=relaxed/simple;
	bh=E3XzDKBI4O6b7+4oDAWgHZ5x3Mjk43D1oICN2m0iXfQ=;
	h=To:Subject:From:Message-Id:Date; b=S20IxlzVH/Sbjtex3sEOgg1Ja3OvXpLlfMwizqLELYeqqHGv0fnrVDrRbH77uzVFXjFtoWgfCKy3hEJ0taWY/bjWcp4bQsNoiO7ByMuvx/ZOMpDrKFAIOLzbvWwVO02c3+Xc8Gma9ePw12SZLmyeVCE/vs42rn72G9m0RH7vcdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBK/TPOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBK/TPOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA381C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742317193;
	bh=E3XzDKBI4O6b7+4oDAWgHZ5x3Mjk43D1oICN2m0iXfQ=;
	h=To:Subject:From:Date:From;
	b=vBK/TPOLzvu/HKMMsq+g+Cp4z9KREADEfCOlp0TCZI7NyjFJPA9nVbVuNfwXAAkKT
	 PPYQ8uD2u9Px5XWwGulh1W1Rl7bbEgIdD9Q7wH/1KZz65KbwB6KSyiV40RJUsIwIeo
	 ov1hzNf9jqC7OBVZyjexiJOZt271x72JSTekOoHGzdG+ioxLhzsElajoP9Ed6rCCV8
	 yhlS7JwFdOxP35nDLmHMJpcaEZcEJ8oqeLkLHMpS+je0+eXIFvTpgbBp0j6E7oeeuU
	 4UJCd6ODXWqQXqfxBpnlYITkTFcH4OJdhmQVHleKFbjkPkzsvSJVBThO1ExMXRloGF
	 BgmhrWzbZDeng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C20C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231719370.2987.7864175473969720776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48b0f11c45dce048a62b7bd095b77a41aa1793cddd72c34cfd776c9a0689db9
Date: Tue, 18 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742317193
