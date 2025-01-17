Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2CA25A638
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737089754; cv=none; b=JLFRkw7/pW5Of9egvW/t33Gw8Ifpr2IDJSOHILkesQ0hKvj8Wxd7m2JGZdyIRDhOiI/rIYAn01XGdsm9Z65+CHb00WSg2hi5GwdxSZEduJCbcQOyRRWrkkUJoBzWcyYMjTHTuWwePa4KOP1kM6cLCb+eykTpQC5NThWjJGBuurM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737089754; c=relaxed/simple;
	bh=SDStYLnjrzbncd0bPW/Isx5l2/S6cfsh1MMKy0zJuUo=;
	h=To:Subject:From:Message-Id:Date; b=bXrpu/txfmMYJ1udtrcAyVP+Vo03dDAn4Mm4L4hG+6oXfGioiFi90IJT76TLbBbbLs/QWQyTdbVemHHHSx6DTUGSljD+3XCkCO27DxXtsuagmpAfF/NTR4sF86ffguhS1Z2Q3yU3xoeRAAhX7qWTMy+7fR4IGXa2Hs7VWYPMWY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9l6lD64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9l6lD64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB4CC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737089753;
	bh=SDStYLnjrzbncd0bPW/Isx5l2/S6cfsh1MMKy0zJuUo=;
	h=To:Subject:From:Date:From;
	b=J9l6lD64NifuSjes05DkJ6xqEjpFEGB4aT6ual3QI218b/AHkEs9Uh+zH+YZgg3cu
	 gnsblO1xMijkrnh42yRan6pdgJU+w6o7geJ8eaftC14ZbNF63+X5SOEYffzk5i01dh
	 qOJQjoCVbQOMHEDAfebFoMljJt+DhzYeVg/tG+3iRmw8sG+qgycMZTza4SPcj1DulU
	 GCJCFMKqyHAS9SPAqhVyyO0mJWaT0qcJef9uw6w3oNau8HlFx/pIu1W+gmYOLoWU8A
	 TmjsvI6/qC+cw6jtBZHRMQkOncpvCCT4HduztNnR79sBRGWylxL40A8O6uIkjo+KGc
	 fHYXDKlDVeZ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E90C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708975358.13867.17551891619833067625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb3fb14c944fe7e4f158c85e57e1634af8f5f706b109a98ae55093b3f0190e8
Date: Fri, 17 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737089753
