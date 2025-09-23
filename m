Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12311189
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758626394; cv=none; b=MVo3yDD7HR+xdSpl2o+w6sgqV4XQboDb9+d6BCNUdnlZRwyUcqPB/YvJRG6kOKIsX6qZIoXTepMqbqLJEjDzQnDH6W9VSc+wK05Wkz5TS/oS+k5/ir3CKmmV3YEm1AfjzhJk4MTl4oiAGXIdfxFZj6HPZma6evq+ghf5f7dKfu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758626394; c=relaxed/simple;
	bh=GCGClKF2NL9hYyRhHG3HGwZcIKgsMdR8a3PpZTavK0g=;
	h=To:Subject:From:Message-Id:Date; b=QlU4kNAtEDccZ/biioDSAI8wNSDz7qQdzlA2p6HVqltn1AH5qEI9UriKQ5Y8yWhv4w9XIU3qpt/Vrmk+sPbzjAeGjWcSHySISoRK0atP4Fi9qgKlv3sdYLGnFZ45V9XjZqu+4dVEit0YAaIOYF+z71MxtIY2arKRLficDnhzNjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pL00rMf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pL00rMf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758626393;
	bh=GCGClKF2NL9hYyRhHG3HGwZcIKgsMdR8a3PpZTavK0g=;
	h=To:Subject:From:Date:From;
	b=pL00rMf/QLm8rnWGlpOB5wRNHwtYozFtR0ZomrS487SHXHM3c/9g4AkqoGinthZDF
	 kfVMVmdVRNfZMLb4+zKDa8LXo5Z6GmmqUcCHtcunakcJksKEAePlgIJm+yTeozvGHC
	 4brd8ezTkzAp6WkfAeGX7rYYRij/M7DLOsApKxae/shUnmVJqw7pSCdEU6kSASB/Ng
	 oO8W4jmD92lwBdoVTH+NWHjli+pJ5YbxsbtJu+3mtqQwaCs3ydvTfEQKJ/R1ZaWftr
	 9Go+aein3z5GrqXMjGtsAeST+MOWqr1P4jpq2iEiQDuLx7kVKDHMcA5pPtyAn2XFlS
	 R06tmdoXKP1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69DCAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862639357.9450.4217644040571540929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ceea35e9dd2114fbbcaee9ff28166e0051414aeea07fc12f37727b675c768b3
Date: Tue, 23 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758626393
