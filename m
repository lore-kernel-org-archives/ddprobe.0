Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7E3250BF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742813394; cv=none; b=KFH11s9ZqpppX8fSn3O3gJokZ4rEgznu4OjP0SzsRQLPZW51+SOf2Y790N37Q0DOl+dJananc4EPicBGzgsSO4dW1zVqRKdwFABx6OU2MwYRdFp5QjJKrYJffrDcSbdV0rR9LZjTsvwEDoHQBv8FcBEZmj+AHc/6czIHoHDQsi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742813394; c=relaxed/simple;
	bh=eDzHlcw3PGVZODKFIgHLSqhCkKJxexb+XBNVNhx/2cY=;
	h=To:Subject:From:Message-Id:Date; b=HVic+rfZP+1xQ5tiyW+m6cr0qNF5sfrSpshcluSu9JJ+HuLZHYc4UEQJ8hDm90K+ptGjqJm0MDj4yFvAgfyo2W0fyKebxBy4P92arkqozVEbVLAWjNN1Vr7ut0ExRphf8WTBAsjlMylebGJ7bJj9P4xDgF16Vv2thUGzhPgi7w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjwfC3lL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjwfC3lL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0692C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742813393;
	bh=eDzHlcw3PGVZODKFIgHLSqhCkKJxexb+XBNVNhx/2cY=;
	h=To:Subject:From:Date:From;
	b=EjwfC3lLEF1+HdopgZDwFN1TqQ4O9dKPjWVmo6sWrnEFFr6Jz+5t5K1zGSW+wsDkI
	 v8L5Q9FkT0wBi5TLbPt33ZYPnxsIOEqRodzRFzT0aHmlddQU7kUmm+ko4fSKZd2xUU
	 2+ivjy1cMG4PA6eluy7tJL/afzpYslCD+lixrf6CMgCgjqWF07J2uYhtEtPZfyxyIn
	 BMzpS5GmcO4ffn7YT/QLw/o1mx8kT4Ng5pGhxS9RHQHfMRKyjLJe4ov6a32vnsbOqg
	 OjJPMX8WcL7+VTTBhWLAfWDSdzYSaktdfyNSA8IYWn+0uxUkyRFexWAPC2KB3v6XRi
	 VELoDsMHz2dlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B32C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281339359.12873.6695202119141797548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf151f4128d03119b910b3da7f96ec601713a2a7b057fe25e1a42080b563668
Date: Mon, 24 Mar 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742813393
