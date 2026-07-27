Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E371282F17
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785186034; cv=none; b=r75ROQIWWWv6Oa33EfXZEjDGyshbGcmZolsFOqJ6mvM8SjM3Mhls+egFP3m5MoZOt9JJZmFUeb9UiIllry/HbpQb+3WEBGpNToVyajxxWxlAl76dCBHtdP6LlvaoBQ0cgfrC8+5S7dsk9B5Fwv7d+4FZAEB1pbLj7YgLWb5ZYT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785186034; c=relaxed/simple;
	bh=nR8yQnBt261Pn/GbGJlkYm9BLW94RFRr4jyJFuNh3g0=;
	h=To:Subject:From:Message-Id:Date; b=MP9TRztjN3zNJLY/dXTb5sWq98MiWA6rkuwydmWcRqdvRN6Qe+tNru40UkRKKexPxalD4hwXyHs/8w63GXWwGDHlFtB/TBReEKSjZt8L+LO2znZuX++pqOqntGTUUXyf0PPaDJ0MJEBsxzol4OfTpzASDlK9VPU5ySAmeJ1JqZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGJRylad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGJRylad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDB6C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785186033;
	bh=nR8yQnBt261Pn/GbGJlkYm9BLW94RFRr4jyJFuNh3g0=;
	h=To:Subject:From:Date:From;
	b=kGJRyladowk63BVjNSTvQkVhRePYmKKgZeSrBryANCew+7k1leM9dyfir4Kvkt7vG
	 veiaT7XB3jEuMPOpVTEDw+SbM/12KApjvoxHU4W2MOXAAuiXCUsRjS1yU+vPYbLD7C
	 zvbyANgu8Y6H3pOce1BiR+AtOnoKQgNx1QbymF9CM0JS0Ddr8ovFnePTiZSK+5gC8r
	 StWT+IFeJr2lERSQs8O8yZdBLTxY2J35S0ky+2IAAzEMvez3RYAN6Wx1AcMfqIBGG2
	 R+p/9AJYBpw0TU2VNXkYtXgUHVYjIWYqL/IuwoPMVcf0aQir9wI9EVGwXcIQGdlWnK
	 /we966pPTNYVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE3C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518603368.30352.10277958464086796916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00fe4f1d417be6ae060ba0241a5f07e410389d5ece2681b3409fb574e8427b79
Date: Mon, 27 Jul 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785186033
