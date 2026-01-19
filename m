Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C20150095A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768850634; cv=none; b=S1kF9Z+JON/4/J/938WosULV0yDdZy2eVutEXHVzp6XTQ5Be3is9PaiMH2bcfopfiLZ4zeZBBSq0AAiWR1P+G+1GZu6N/x4CCfCv83nmZpCXfxUjJnj+h24Eo8mc/asDx1jNBIBy68ZsSH0ItK1SH3dp7o6VY72321Ay1LxvjwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768850634; c=relaxed/simple;
	bh=EPjQunBzXq30DnPaQj3DGbJ3jU2W+6NrMLqOFuuOA6Q=;
	h=To:Subject:From:Message-Id:Date; b=skW2AUOA7y5P6Bl21BhzLGcszsGqny6OemkE/Yicp4bPETv1zaQnI4tsK9bqbTG0FVcxHekh7+wQ44uoWrOr/NFGGk8EW61P2pslJaQqAPbWgfobVuNQSCjF6VCeqQ0aVYh1ORzHxnD2iKySryRwyH00KhPZ+CPgc0mlCWZ1Qk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5Xc+QYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5Xc+QYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4D1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768850633;
	bh=EPjQunBzXq30DnPaQj3DGbJ3jU2W+6NrMLqOFuuOA6Q=;
	h=To:Subject:From:Date:From;
	b=N5Xc+QYc7fEbEeflLSH8Je/Rmu+l1rDqoH91TuTrvH7H9YOyiaNGAHVLpiN3cIr6+
	 ybX+mywVRi1Tg/o0AjlptW6f99PWou4m/S6sked43AoO0yOch1wLY+JYByuyYbb+xA
	 a+SiBYisC7rWP9GMrXcKgBay4axNBnojdP5HjxOA+wpBvlRhRRObdU8HaFPElNk5B4
	 X8mHO5Xtye3yxdXKsAuM77nJ6yjsAuP8prRXSNt+C3TaGrXEAMqMKdivWae6PQ8I7G
	 1gjz1v+8s9eQK32/EOuolr3j9KUT3NTxL9X2oI8xMhPGde/7pqVMR7gMYPDmlu85pc
	 XaGhwbTlaxOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90281CCF2DD
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885063358.10766.5228020563015192224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b662a5ea74ab269b60df2230afa17bb83d8d1c5aac92b73c056a716b3ce654
Date: Mon, 19 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768850633
