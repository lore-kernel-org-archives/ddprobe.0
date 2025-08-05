Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3925D29CE6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411994; cv=none; b=e2mE551buw8AkuJ5oTnH5TQtGYs7Y6VFz85J1s91WqWHd++8b9vNHVea1EYuxHdmrcO8asb1LvA4o/vNqJGNp/mhGMKMUktzBOYF7ynoX4Sin10whYxKBqwrE4+X5vBWe0aBBLl0YhtZ0JsiNlvAAJbh/HvD172ofJONIPm+8u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411994; c=relaxed/simple;
	bh=wiAj/fXZDuYKbT0XmE9Dt+yC2UjJI76Bn9OU7CZjDQE=;
	h=To:Subject:From:Message-Id:Date; b=cLeTXb0pBgjUJr6jP1bkqBH9f8NXId+ZXP4RwO4iuQdS97367dxYewGeykfDBbePqlpGukcHqiWaDrH4XLVeiiPefI1uS7UZ4piaOYqfg8DokxFv79OoMnKoCAU+QJjeeJnSX1MOVdVCpcO27eezsjs0X2B6bHTCr18zBkCA4q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+leLTs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+leLTs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754411993;
	bh=wiAj/fXZDuYKbT0XmE9Dt+yC2UjJI76Bn9OU7CZjDQE=;
	h=To:Subject:From:Date:From;
	b=h+leLTs0H47ciMH6SJehotPoTo+b9ZlcLJIAdzm9/f4nr3dmg6rhyutF0QGuURn5i
	 ymwi6tkKw1YA+SPIjw3IHPXESzXWCTeRapjqqPNXoKQUodnyX5lhJsjTC9YG+PFsGj
	 0+d8vRGJaBKzT3EZ7ahTZFG4oqAvZtYsvlWHLgKA9Lh+D2POpeAEIywgc0kziWBS3n
	 fxN+UtW1MjscuP+2eQN4xKFEePhUN8lYzXmTtPXgyLfxP3MTfCFAJFwwi+N0vCZYem
	 1wbdw5eP8NS4hj8k8r1neI0Xz/X6bQEPEt4Ehn6BVMQqx9iwlvPESynztkqwvcRvx0
	 B8jc66S/OgrYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC23C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441199357.17509.7871284745423790493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c78bd3f7e4a1e05c285377b4f6dd29d725e86c6402ef042d2c58d6aa3e9915
Date: Tue, 05 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754411993
