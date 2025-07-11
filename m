Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A8E183CA6
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752247794; cv=none; b=Ix+8kBKjUAfB+3sWxla2qFmmKaEk7riel/qXseaBmk7dsHtW/Q05PAFIwkVoMsODEsMrec4qmSk966y74ddRpINFfhAADmbbx1O25uUdB/Y2VCjvWgXnuZm4+6wkQ651FHH2bSLasLskaUaF4HbE/wNNYsCfNJl1ioXfumgUj4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752247794; c=relaxed/simple;
	bh=B5XeTTXo9AHXOf+eocHhl8svp9oErYOsJaMn0lkANC0=;
	h=To:Subject:From:Message-Id:Date; b=ItRycdN90Hvh58c2Sbp3KKc0Az3rYzkVujIgxmD0RoTY3nq+2PDhBrNVaZSv6N/nbhfaCyw0/nWZ3A0ckNmg4Kc8is+Gb7P0CV/YL9tIXrDgkOCpiU67snM3iarZkHvEAtUHn3sRzb2o8YynnKU8pmFPjlBcoayIuORc3xN+VSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3mm+XjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3mm+XjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E73C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752247793;
	bh=B5XeTTXo9AHXOf+eocHhl8svp9oErYOsJaMn0lkANC0=;
	h=To:Subject:From:Date:From;
	b=l3mm+XjQNCl1E1to7KcDTkM89G2vxmiXo3xoXpp8XOQOclPU9AdbFxDXX+CREaohd
	 6MJj7JEKa/G6S/C+EuORmD2Y7xJrxoYGmCS6EGygRISFbwjlfCGIlUMT0TuYqkSFi0
	 YT0D0G/MI6xoc7eLb6KoL28LkGpGrTESE1qlhy2x/FP951UPv3K0kaM3tlrmhiaFm1
	 0GP4yIA+H89rKfb7OPAGy/AdkIQHq9IAXUGBi+yib+VbZovurcQd+jeolwoysh9B6w
	 YRsxClikkHY0rTb5jfgdFrTGWwssRCuKzeKBc31OLUfYnxXlBx61K4ho3JQdDULQ+S
	 5T6A0oQpGQjCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91226C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224779358.20884.222336008287334179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6175d732d5a859ab1441468c2c0e54e1d626e68185754e02f199328a6ab48d
Date: Fri, 11 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752247793
