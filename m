Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D5B365A08
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769046834; cv=none; b=LGbJtWDikqmbv9Qe5B99CALR8LR+WfcIzKfyW5o7wyp9BNoUk8APJFKyAzPq1F4ZPxQV5/acEa5q6l4/H19KpbppaL+4GtkpwTuc8j0y70RMuOyuLcX+1q/PDspPINtS5sQ0GrhgHMIhzoft2KTwtePAjfpEW/KqWnGEsfIYG4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769046834; c=relaxed/simple;
	bh=mNFlhstsiEHEH9yDJ6I87TbZHRAgiRy3n9IvRSUrjyo=;
	h=To:Subject:From:Message-Id:Date; b=Vd4pwHFq7YIlKH+KhKwoZndFyJqZzADGYm/cm1e9wVaP+GYKGUwWvwXirRLoozBhmHImFvsDAgKoNZs/hm3Xr/79hvek4pY4B2/CbB5ZvlkmfseWJ8HNasxYjJYVCMYXwhvJyDSX5xEtG1NsRxM9xZNu6NtVSX809nNhRT22I1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ici2oJnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ici2oJnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD43C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769046833;
	bh=mNFlhstsiEHEH9yDJ6I87TbZHRAgiRy3n9IvRSUrjyo=;
	h=To:Subject:From:Date:From;
	b=ici2oJnM5ap3XEQh1L2cDpfRQoKY1ODPDTzpt0L41WdFDhs+QrI3f9ny559CZD52h
	 OvAfCttsoV7evwNZkFj/CAV8axeD1/QuOeIbXzC9aBO/RV933p938jKlBEuxCpzFwr
	 W1/EXEWFOTye9i/qYhWUfHA4WKLndRK/icPvR8cl11IPNCzidmfgz1Axgq8zZmm3XY
	 PBpLdUH4iwZENy+/rMlg/LV98qWXRZ22ACtnJj1s4W6X2Ww97Eb7eDYatmBHGDRr1l
	 FZ8H0bhbLnOaZOrX8FadjyarZ/lF/a4srH1PJdt0LmmSQshpjcAhbN7bSMrMIDND/B
	 YdC8ei6BhmA7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947CDC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904683359.7437.4597328190523181258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0dfac43ef39535c817f5acc4cefd67bbe48c760e6a365bd85452dcd2d6b748
Date: Thu, 22 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769046833
