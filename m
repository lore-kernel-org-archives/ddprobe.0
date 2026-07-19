Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2B518B0A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784440114; cv=none; b=DwTPrHKEPxy7zNtBgHPYH3Un1nwMuZTjRDK5u18Z3F+yfpbSKniIDi0l70kkTSh/PYwnMfT7nGoEEIe27zA2rS8IUAs5Ag8XPECkh75RPiroaSn1/O1ZwFkjHu7em6tJZJ/kwNE4qHZOwzI5hI9tXH/JK6SdMtx2q1XYjZVFgC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784440114; c=relaxed/simple;
	bh=jA/LNXHO9Dh82uLH9Doeu4hjeaKGkT97srrLxkL3ECo=;
	h=To:Subject:From:Message-Id:Date; b=rFrtDaty6Vlt9RMkXg4AqOnBtXPbFDje0O2DQjPVeSBMam5AA1zvcS50dkva0JJNdZzZo3d8eiF2yWO6ACKT9I3DjBKY6Yw2FhgklImgMnQ+ZU5/sYC3H2rlYDq7mm/NPCyKJ7vU2F/esTMqTTsqkCSJDU+j7P0S6PA8fqwdz0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6LDHDyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6LDHDyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D566AC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784440113;
	bh=jA/LNXHO9Dh82uLH9Doeu4hjeaKGkT97srrLxkL3ECo=;
	h=To:Subject:From:Date:From;
	b=O6LDHDyKd/2SDP4OR3dpl5ai5QPC9MthGH+kC2id2/YLD7iQC+Y2Wcm3AIoqMrizy
	 Hn46PHV8w6ONCld/zkf5ouKINSm2mwlnN1VjUONRoWtw81QlqxCOTCF/92wBwcw4f5
	 ETlTgur316Hy8dPHHwKvoqQEwCh7PUgEFXvxjJ2+fvJh36Hibdop679EQgqfDj+F09
	 oVUto308ejFqmEtMtkNn8r2BVd2ycJH/6+Fy0spkgBjSjEzk4N+IOHKs8JjrK68rJO
	 cIWrc6He+YpYxvIzNbF126jpUjuzUnMAFO5fE9wMCrCtdU9JuZtdRPwzdXhooXqUjJ
	 W/73auZM9xJVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B192FC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444011369.30899.6644750290788047805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3e878c224373462105cc56d0057d0f3de61d4a00f0d59042581c46080ce667
Date: Sun, 19 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784440113
