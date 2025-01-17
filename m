Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D641F63CF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737098754; cv=none; b=HTFKrr72quvMEcc6EVVl1gy/KKj3WZrX6PFNqKNlxQlFYmQXU7wf5EIInipY9NAQLQz5mpTtbJ/mku5aQ/bGYKSNckjIKIwzZs/TLsuxBVRwMnldfbA48hgBc7Yw3A73ZKjAT8LQHsyrtBAcGz3gGk3NZ7AMsuBcpOU0D5V+lG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737098754; c=relaxed/simple;
	bh=HGr86FwnaM4Iw7v+cwjE6RODWQEv0FHHGyqnyT78YmY=;
	h=To:Subject:From:Message-Id:Date; b=IRiWq6AoTrwk3fkqcdUVFItIsJqWbTUqSJQApKRvxJGnAAy1kJoYbOok+KDq7qowmOcsjS4OEd2/5L7hvkmlzg3eME5dQczM2iJde3ikSKxbGE5wjn4hDq1pg+7jVIuo9dawiQ5a43WlMDJ9OuAKTMzs+09ULqKewLT6m6c0pI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYOxOT16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYOxOT16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A429DC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737098753;
	bh=HGr86FwnaM4Iw7v+cwjE6RODWQEv0FHHGyqnyT78YmY=;
	h=To:Subject:From:Date:From;
	b=CYOxOT16c2gfLcziY4c42Pou1UHqGoePgrzkHI8nNUYnmnoPKocFU7nz8HMww0aaI
	 yCIwJWKgcpQTiHHIxwLPmVLWOrF/uRK/6gvtcSNMxCKKeeopno2pRzGjpgdIc9ZmfI
	 AU9KnmNdbmSkI7sbFGZQuApmVWX5yTItX2Cwpr3BxajP8hTP7kWBs/iCnivs9pzSvJ
	 yjqUj9Q2bW1UlwE+sugQqNYeix+QPAMgV/b/H2r+ts1Xs6wHnbs7DivJ6OoOpsOWAD
	 pPCC56NfzYBiY+jVCeL/Iv24LAX1lsdJhARH7jzIscOy27Yeb8Z1SVnjP/qnUaEpSy
	 ZrowYECsOasFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A2C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709875357.29320.12135685942957547026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e07abaf0fd8a0be291c920d3eedbff1788a7284246807662d9d2b0762a2aa4
Date: Fri, 17 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737098753
