Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134DA23DE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721644554; cv=none; b=sopHLYuqMQtT8GvL9kWaEF7uzGio9cTBZMLKmP8P33ctd2swHHKcW0wKoiYmdh/TiU0LU3pNPncU6hxYW4nCi3VGfB7pgzR3dcLcj/H3oq/GoF/tP/mZaB2EnxT+WJOGP7AyizWsy71ieXTQ8ugGry9JiW0nw3m7rthz8FAJlBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721644554; c=relaxed/simple;
	bh=DllZNmXgvN5cm3HFL3COobyB5e1ilJOtLGyUKsdHLAo=;
	h=To:Subject:From:Message-Id:Date; b=J+CBpqTgbwZgFIIpCo0e1jh2BTmTXzxYfH6Vnkedb8LxArnc4FfkYZsWunMkjZSYRhov4ZOa/WkwWcchDN1W6fnBTMH+qllJrtghILg57j9YQC0v/2nyAPncRbXbB5BPya1vHsjLnxZZ2dBcDY1EtTkX5L9OVPj/AUC0I/Nn4QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3ABfxXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3ABfxXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48F6C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721644553;
	bh=DllZNmXgvN5cm3HFL3COobyB5e1ilJOtLGyUKsdHLAo=;
	h=To:Subject:From:Date:From;
	b=X3ABfxXZMePSX3DZOlQEJJtADF4Ngi7HmL+62HjzVU8DsmZ8Hk45okZpPekElF46T
	 KY6uDbIOcwVhL+ekqeeVLg5sbvUnfYCWyFNE3Iu0Lnewz9vWUVhMf3MRzY3gs6patC
	 1hbaQZ1d2wmdnGLhkEg3xxy7rpzT+EYBB/2olJT2hN3W2eVlr3DaLrsFjeZPUvp3nO
	 vu8hLDxMhPn7TbdWtpgK9lL8IAfMmEIT502AlMHI/2R8WEDXmw5mreY759c3cbe0Gf
	 plSX1BR3FpFmOIQFg0hdjExlKqTYExA7z1b8188PwqDQGA8dL/W7im6sQirz0jmZhg
	 uZdB3gAdaHxMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94821C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164455359.29002.1835595494386110726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdab0b53d8ab1fade161ea2cee84fb716fb090222c5954b0398d6eadee5ef648
Date: Mon, 22 Jul 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721644553
