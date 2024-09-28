Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26075381C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727520954; cv=none; b=OksdPewP/4k5mhLqt37nitE54ctiZNjJOZ0B/kMAv8CZ8xxSAFGe50k2bOhXaiedfKrjUnnh+l3+Rvrtldzdu0VJ0Chr68sOzRThfGHTXZKIl9eSHa+swKyK3ZZZrfasHlpsWIho0ypwCS936FS7dX9yTOcmoyk3ts0nR7WMjK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727520954; c=relaxed/simple;
	bh=w0TB5SZpXQedoSZSF+E1TnbuD9t5hX/JkVXJMWqSup0=;
	h=To:Subject:From:Message-Id:Date; b=cVYT+oSVm5UMORVYeH7AKy3xgNMT3yehDdEF0CMO0PCGm7swOW0upSNzVsBJStA6G3FRIx9vRt4vc/5s5wqrgCFA9oJecbft1oIPsT53FRBwMg0eDQffXKBIs+W/yTOMTuLmASiqQz9ajRiEoQ5Yus/lmf1WjPkdvhtnbAfKJb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDV1rhNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDV1rhNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A7EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727520953;
	bh=w0TB5SZpXQedoSZSF+E1TnbuD9t5hX/JkVXJMWqSup0=;
	h=To:Subject:From:Date:From;
	b=fDV1rhNiBC80A5qIdvOZJVCI2DzSzmdT54+UgIsfTE4LWhM1N7iOSxvQXKhsg2vNg
	 yCyElFOgDoyHYB7MBvPajgGNuezdyipnvDQfVsY7jKObN8hGylY4ndaaE9Z5GZWvGY
	 vcRaxPho1fPgR5dzkaJvMvd1rPfU20c6wymp+3PlMGCZ9cvVauqd3w1xQ3voEhnbGe
	 vb7CqRK+p7OqgBbvUlQZCjbup0eghXRvJvFedv9B2bfZt6sR3mOvJnrvXqYDdxZHy6
	 ylIrZEhabIo9r7x0/2SWeOBwrKBYxYYVZRlTcwaAAxcoTLzqwr8LFR4S9lp+3i8J3B
	 vpk8GNA3bzXJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B2CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752095358.2946.11088852515863402952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d46277a2bf92a477610bdd4d6a14c6c15d49cf03d7efcb0ee1f34e994ec644
Date: Sat, 28 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727520953
